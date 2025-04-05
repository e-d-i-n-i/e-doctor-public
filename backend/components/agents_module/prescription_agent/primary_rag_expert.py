from __future__ import annotations as _annotations
from dataclasses import dataclass
from dotenv import load_dotenv
import logfire
import asyncio
import httpx
import os
import logging

from pydantic_ai import Agent, ModelRetry, RunContext
from pydantic_ai.models.openai import OpenAIModel
from openai import AsyncOpenAI
from supabase import Client
from typing import List, Optional

# Load environment variables
load_dotenv()

# Configure logging
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

# Initialize LLM model
llm = os.getenv('LLM_MODEL', 'gpt-4')
model = OpenAIModel(llm)

# Configure Logfire
logfire.configure(send_to_logfire='if-token-present')

# Define dependencies
@dataclass
class PydanticAIDeps:
    supabase: Client
    openai_client: AsyncOpenAI
    patient_context: str  # Add patient_context to dependencies

# System prompt with explicit instructions for patient context
system_prompt = """
You are a specialized laboratory technician and medical doctor, skilled in analyzing laboratory data, interpreting test results, and diagnosing medical conditions. Your expertise combines laboratory precision with clinical insight to investigate, diagnose, and recommend treatments based on lab findings and patient context.

**Key Responsibilities**:
1. **Lab Data Focus**: Prioritize analyzing laboratory results, correlating them with the patient’s history, symptoms, and clinical presentation.
2. **Patient Context**: Integrate lab findings with the patient’s specific condition. Explicitly explain how results relate to their diagnosis or treatment.
3. **Evidence-Based Analysis**: Use medical literature and guidelines to support conclusions, but always ground recommendations in the patient’s unique data.
4. **Proactive Action**: Autonomously interpret results, identify abnormalities, and suggest further tests or treatments without seeking confirmation.
5. **Transparency**: Clearly communicate uncertainties, inconclusive results, or the need for additional testing. Avoid speculation and cite sources.
6. **Patient-Centric Responses**: Tailor explanations and recommendations to the patient’s context, using clear, accessible language.
7. **Source Attribution**: Always reference sources and indicate confidence levels in your analysis and recommendations.
8. **Prescription Format**: When you try to suggest drug prescription, make sure to include this medication, dosage, duration, frequency, route of administration, instructions.
"""
# Initialize the AI agent
pydantic_ai_expert = Agent(
    model,
    system_prompt=system_prompt,
    deps_type=PydanticAIDeps,
    retries=2
)

# Function to get embedding vector from OpenAI
async def get_embedding(text: str, openai_client: AsyncOpenAI) -> List[float]:
    """
    Get embedding vector from OpenAI.
    
    Args:
        text: The text to generate an embedding for
        openai_client: The OpenAI client instance
        
    Returns:
        List[float]: The embedding vector
    """
    try:
        response = await openai_client.embeddings.create(
            model="text-embedding-3-small",
            input=text
        )
        return response.data[0].embedding
    except Exception as e:
        logger.error(f"Error getting embedding: {e}")
        return [0] * 1536  # Return zero vector on error

# Tool to retrieve patient context
@pydantic_ai_expert.tool
async def get_patient_context(ctx: RunContext[PydanticAIDeps]) -> str:
    """
    Retrieve and format the patient's context (history and current state) for use in the AI's reasoning.
    
    Args:
        ctx: The context including the Supabase client, OpenAI client, and patient_context
        
    Returns:
        str: The patient's context
    """
    try:
        # Return the patient context directly
        patient_context = ctx.deps.patient_context
        logger.info(f"Patient Context: {patient_context}")  # Log patient context
        return patient_context
    except Exception as e:
        logger.error(f"Error retrieving patient context: {e}")
        return "Error retrieving patient context."

# Tool to retrieve relevant documentation
@pydantic_ai_expert.tool
async def retrieve_relevant_documentation(ctx: RunContext[PydanticAIDeps], user_query: str) -> str:
    """
    Retrieve relevant documentation chunks based on the query with RAG.
    
    Args:
        ctx: The context including the Supabase client and OpenAI client
        user_query: The user's question or query
        
    Returns:
        A formatted string containing the top 5 most relevant documentation chunks
    """
    try:
        # Get the embedding for the query
        query_embedding = await get_embedding(user_query, ctx.deps.openai_client)
        
        # Query Supabase for relevant documents
        result = ctx.deps.supabase.rpc(
            'match_site_pages',
            {
                'query_embedding': query_embedding,
                'match_count': 5,
                'filter': {'source': 'drugs_docs'}
            }
        ).execute()
        
        if not result.data:
            return "No relevant documentation found."
            
        # Format the results
        formatted_chunks = []
        for doc in result.data:
            chunk_text = f"""
# {doc['title']}

{doc['content']}
"""
            formatted_chunks.append(chunk_text)
            
        # Join all chunks with a separator
        return "\n\n---\n\n".join(formatted_chunks)
        
    except Exception as e:
        logger.error(f"Error retrieving documentation: {e}")
        return f"Error retrieving documentation: {str(e)}"