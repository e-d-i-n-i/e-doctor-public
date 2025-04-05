import os
import json
import asyncio
from xml.etree import ElementTree
from typing import List, Dict, Any
from dataclasses import dataclass
from datetime import datetime, timezone
from urllib.parse import urlparse
from dotenv import load_dotenv
import gradio as gr

from crawl4ai import AsyncWebCrawler, BrowserConfig, CrawlerRunConfig, CacheMode
from openai import AsyncOpenAI
from supabase import create_client, Client

load_dotenv()

# Initialize OpenAI and Supabase clients
openai_client = AsyncOpenAI(api_key=os.getenv("OPENAI_API_KEY"))
supabase: Client = create_client(
    os.getenv("SUPABASE_URL"),
    os.getenv("SUPABASE_SERVICE_KEY")
)

@dataclass
class ProcessedChunk:
    url: str
    chunk_number: int
    title: str
    summary: str
    content: str
    metadata: Dict[str, Any]
    embedding: List[float]

def chunk_text(text: str, chunk_size: int = 5000) -> List[str]:
    """Split text into chunks, respecting code blocks and paragraphs."""
    chunks = []
    start = 0
    text_length = len(text)

    while start < text_length:
        end = start + chunk_size
        if end >= text_length:
            chunks.append(text[start:].strip())
            break

        chunk = text[start:end]
        code_block = chunk.rfind('```')
        if code_block != -1 and code_block > chunk_size * 0.3:
            end = start + code_block
        elif '\n\n' in chunk:
            last_break = chunk.rfind('\n\n')
            if last_break > chunk_size * 0.3:
                end = start + last_break
        elif '. ' in chunk:
            last_period = chunk.rfind('. ')
            if last_period > chunk_size * 0.3:
                end = start + last_period + 1

        chunk = text[start:end].strip()
        if chunk:
            chunks.append(chunk)

        start = max(start + 1, end)

    return chunks

async def get_title_and_summary(chunk: str, url: str) -> Dict[str, str]:
    """Extract title and summary using GPT-4."""
    system_prompt = """You are an AI that extracts titles and summaries from documentation chunks.
    Return a JSON object with 'title' and 'summary' keys.
    For the title: If this seems like the start of a document, extract its title. If it's a middle chunk, derive a descriptive title.
    For the summary: Create a concise summary of the main points in this chunk.
    Keep both title and summary concise but informative."""
    
    try:
        response = await openai_client.chat.completions.create(
            model=os.getenv("LLM_MODEL", "gpt-4-turbo-preview"),  # Use a supported model
            messages=[
                {"role": "system", "content": system_prompt},
                {"role": "user", "content": f"URL: {url}\n\nContent:\n{chunk[:1000]}..."}
            ],
            response_format={ "type": "json_object" }
        )
        return json.loads(response.choices[0].message.content)
    except Exception as e:
        print(f"Error getting title and summary: {e}")
        return {"title": "Error processing title", "summary": "Error processing summary"}

async def get_embedding(text: str) -> List[float]:
    """Get embedding vector from OpenAI."""
    try:
        response = await openai_client.embeddings.create(
            model="text-embedding-3-small",
            input=text
        )
        return response.data[0].embedding
    except Exception as e:
        print(f"Error getting embedding: {e}")
        return [0] * 1536

async def process_chunk(chunk: str, chunk_number: int, url: str, source: str) -> ProcessedChunk:
    """Process a single chunk of text."""
    extracted = await get_title_and_summary(chunk, url)
    embedding = await get_embedding(chunk)
    metadata = {
        "source": source,  # Use user-provided source
        "chunk_size": len(chunk),
        "crawled_at": datetime.now(timezone.utc).isoformat(),
        "url_path": urlparse(url).path
    }
    return ProcessedChunk(
        url=url,
        chunk_number=chunk_number,
        title=extracted['title'],
        summary=extracted['summary'],
        content=chunk,
        metadata=metadata,
        embedding=embedding
    )

async def insert_chunk(chunk: ProcessedChunk):
    """Insert a processed chunk into Supabase."""
    try:
        data = {
            "url": chunk.url,
            "chunk_number": chunk.chunk_number,
            "title": chunk.title,
            "summary": chunk.summary,
            "content": chunk.content,
            "metadata": chunk.metadata,
            "embedding": chunk.embedding
        }
        result = supabase.table("site_pages").insert(data).execute()
        print(f"Inserted chunk {chunk.chunk_number} for {chunk.url}")
        return result
    except Exception as e:
        print(f"Error inserting chunk: {e}")
        return None

async def process_and_store_document(url: str, source: str, markdown: str):
    """Process a document and store its chunks in parallel."""
    chunks = chunk_text(markdown)
    tasks = [process_chunk(chunk, i, url, source) for i, chunk in enumerate(chunks)]
    processed_chunks = await asyncio.gather(*tasks)
    
    insert_tasks = [insert_chunk(chunk) for chunk in processed_chunks]
    await asyncio.gather(*insert_tasks)

async def crawl_website(url: str, source: str):
    """Crawl a single website."""
    browser_config = BrowserConfig(
        headless=True,
        verbose=False,
        extra_args=["--disable-gpu", "--disable-dev-shm-usage", "--no-sandbox"],
    )
    crawl_config = CrawlerRunConfig(cache_mode=CacheMode.BYPASS)

    crawler = AsyncWebCrawler(config=browser_config)
    await crawler.start()

    try:
        result = await crawler.arun(
            url=url,
            config=crawl_config,
            session_id="session1"
        )
        if result.success:
            print(f"Successfully crawled: {url}")
            await process_and_store_document(url, source, result.markdown_v2.raw_markdown)
        else:
            print(f"Failed: {url} - Error: {result.error_message}")
    finally:
        await crawler.close()

def get_urls_from_sitemap_file(sitemap_file) -> List[str]:
    """Extract URLs from an uploaded sitemap.xml file."""
    try:
        # Read the uploaded file using its file path
        with open(sitemap_file.name, "r", encoding="utf-8") as file:
            content = file.read()
        
        # Parse the XML content
        root = ElementTree.fromstring(content)
        namespace = {'ns': 'http://www.sitemaps.org/schemas/sitemap/0.9'}
        urls = [loc.text for loc in root.findall('.//ns:loc', namespace)]
        return urls
    except Exception as e:
        print(f"Error parsing sitemap file: {e}")
        return []

async def process_sitemap_file(sitemap_file, source: str):
    """Process all URLs in an uploaded sitemap.xml file."""
    urls = get_urls_from_sitemap_file(sitemap_file)
    if not urls:
        print("No URLs found in sitemap.")
        return
    
    for url in urls:
        await crawl_website(url, source)

def gradio_interface(sitemap_file, source: str):
    """Gradio interface to handle user input."""
    urls = get_urls_from_sitemap_file(sitemap_file)  # Extract URLs from the sitemap file
    if not urls:
        return "No URLs found in the sitemap file."
    
    asyncio.run(process_sitemap_file(sitemap_file, source))
    return f"Processing completed for {len(urls)} URLs"

# Gradio UI
with gr.Blocks() as demo:
    gr.Markdown("# Sitemap File Processor")
    with gr.Row():
        sitemap_file_input = gr.File(label="Upload sitemap.xml", file_types=[".xml"])
        source_input = gr.Textbox(label="Source (e.g., medical_docs)", placeholder="Enter source name")
    submit_button = gr.Button("Process Sitemap")
    output = gr.Textbox(label="Output")

    submit_button.click(
        gradio_interface,
        inputs=[sitemap_file_input, source_input],
        outputs=output
    )

if __name__ == "__main__":
    demo.launch()