from __future__ import annotations
from typing import List
import asyncio
import os

import logfire
from supabase import Client
from openai import AsyncOpenAI

# Import all the message part classes
from pydantic_ai.messages import (
    ModelRequest,
    ModelResponse,
    UserPromptPart,
    TextPart,
)
from components.agents_module.reasoning_agent.primary_rag_expert import pydantic_ai_expert, PydanticAIDeps

# Load environment variables
from dotenv import load_dotenv
load_dotenv()

class ChatBot:
    def __init__(self):
        self.openai_client = AsyncOpenAI(api_key=os.getenv("OPENAI_API_KEY"))
        self.supabase: Client = Client(
            os.getenv("SUPABASE_URL"),
            os.getenv("SUPABASE_SERVICE_KEY")
        )
        logfire.configure(send_to_logfire='never')
        self.messages: List[ModelRequest | ModelResponse] = []  # Store conversation history

    async def run_agent_with_streaming(self, user_input: str) -> str:
        """
        Run the agent with streaming text for the user_input prompt,
        while maintaining the entire conversation in `self.messages`.
        Returns the final response as a string.
        """
        # Prepare dependencies
        deps = PydanticAIDeps(
            supabase=self.supabase,
            openai_client=self.openai_client
        )

        # Run the agent in a stream
        async with pydantic_ai_expert.run_stream(
            user_input,
            deps=deps,
            message_history=self.messages[:-1],  # pass entire conversation so far
        ) as result:
            # We'll gather partial text to show incrementally
            partial_text = ""

            # Render partial text as it arrives
            async for chunk in result.stream_text(delta=True):
                partial_text += chunk

            # Now that the stream is finished, we have a final result.
            # Add new messages from this run, excluding user-prompt messages
            filtered_messages = [msg for msg in result.new_messages() 
                                if not (hasattr(msg, 'parts') and 
                                        any(part.part_kind == 'user-prompt' for part in msg.parts))]
            self.messages.extend(filtered_messages)

            # Add the final response to the messages
            self.messages.append(
                ModelResponse(parts=[TextPart(content=partial_text)])
            )

            # Return the final response
            return partial_text

    async def reply(self, user_query: str) -> str:
        """
        Process a user query and return the result.
        """
        # Add the user query to the conversation history
        self.messages.append(
            ModelRequest(parts=[UserPromptPart(content=user_query)])
        )

        # Run the agent and return the result
        result = await self.run_agent_with_streaming(user_query)
        return result