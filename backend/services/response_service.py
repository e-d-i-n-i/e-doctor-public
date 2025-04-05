import logging
from flask import json
from components.agents_module.primary_agent.chat_bot import ChatBot
from components.agents_module.prescription_agent.chat_bot import ChatBot as PrescriptionChatBot
from components.agents_module.recommendation_agent.chat_bot import ChatBot as RecommendationChatBot
from components.agents_module.reasoning_agent.chat_bot import ChatBot as ReasoningChatBot
from routes.procedure_calls import get_follow_up_questions, get_lab_reports, get_lab_requests, get_patient_history, get_patient_instance
from templates.formating_prompts import TEMPLATES
import asyncio

primary_agent = ChatBot()
reasoning_agent = ReasoningChatBot()
prescription_agent = PrescriptionChatBot()
recommendation_agent = RecommendationChatBot()

# -------------------------------- chatbot command responses ------------------------------------------

def default_response(user_query, thread_id):
    try:
        # Get or create an event loop for the current thread
        try:
            loop = asyncio.get_event_loop()
        except RuntimeError as e:
            if "no current event loop" in str(e):
                loop = asyncio.new_event_loop()
                asyncio.set_event_loop(loop)
            else:
                raise e

        response = loop.run_until_complete(reasoning_agent.reply(user_query=user_query))

        return response
    except Exception as e:
        # Log the error and return a default response
        logging.error(f"Error in default_response: {e}", exc_info=True)
        return "Sorry, I encountered an error while processing your request."


def default_response_doctor(user_query, thread_id):
    try:
        # Get or create an event loop for the current thread
        try:
            loop = asyncio.get_event_loop()
        except RuntimeError as e:
            if "no current event loop" in str(e):
                loop = asyncio.new_event_loop()
                asyncio.set_event_loop(loop)
            else:
                raise e

        # Run the coroutine synchronously
        patient_history = str(get_patient_history(thread_id)).strip()
        patient_instance = str(get_patient_instance(thread_id)).strip()

        # Format the patient context as a structured string
        patient_context = f"""
**Patient Context**
- Current Patient State: "{patient_instance}"
- Diagnosis History: {patient_history}
"""

        # Log the patient context for debugging
        logging.info(f"Patient Context: {patient_context}")

        # Pass patient_context to the reply method
        response = loop.run_until_complete(primary_agent.reply(user_query=user_query, patient_context=patient_context))

        # Log the final response sent to the user
        logging.info(f"Final response sent to user: {response}")
        return response
    except Exception as e:
        # Log the error and return a default response
        logging.error(f"Error in default_response: {e}", exc_info=True)
        return "Sorry, I encountered an error while processing your request."

def prescription_response(user_query, thread_id):
    try:
        # Get or create an event loop for the current thread
        try:
            loop = asyncio.get_event_loop()
        except RuntimeError as e:
            if "no current event loop" in str(e):
                loop = asyncio.new_event_loop()
                asyncio.set_event_loop(loop)
            else:
                raise e

        # Run the coroutine synchronously
        patient_history = str(get_patient_history(thread_id)).strip()
        patient_instance = str(get_patient_instance(thread_id)).strip()
        patient_lab_reports = str(get_lab_reports(thread_id)).strip()
        patient_followup_questions = str(get_follow_up_questions(thread_id)).strip()

        # Format the patient context as a structured string
        patient_context = f"""
**Patient Context**
- Current Patient State: "{patient_instance}"
- Diagnosis History: {patient_history}
- Lab Reports: {patient_lab_reports}
- Follow-up Questions: {patient_followup_questions}
"""

        # Log the patient context for debugging
        logging.info(f"Patient Context: {patient_context}")

        # Pass patient_context to the reply method
        response = loop.run_until_complete(prescription_agent.reply(user_query=user_query, patient_context=patient_context))

        # Log the final response sent to the user
        logging.info(f"Final response sent to user: {response}")
        return response
    except Exception as e:
        # Log the error and return a default response
        logging.error(f"Error in default_response: {e}", exc_info=True)
        return "Sorry, I encountered an error while processing your request."


def laboratory_response(user_query, thread_id):
    try:
        # Get or create an event loop for the current thread
        try:
            loop = asyncio.get_event_loop()
        except RuntimeError as e:
            if "no current event loop" in str(e):
                loop = asyncio.new_event_loop()
                asyncio.set_event_loop(loop)
            else:
                raise e

        # Run the coroutine synchronously
        patient_lab_requests = str(get_lab_requests(thread_id)).strip()
        patient_lab_reports = str(get_lab_reports(thread_id)).strip()
        patient_followup_questions = str(get_follow_up_questions(thread_id)).strip()

        # Format the patient context as a structured string
        patient_context = f"""
**Patient Context**
- Lab Reports: {patient_lab_reports}
- Lab Requests: {patient_lab_requests}
- Follow-up Questions: {patient_followup_questions}
"""

        # Log the patient context for debugging
        logging.info(f"Patient Context: {patient_context}")

        # Pass patient_context to the reply method
        response = loop.run_until_complete(primary_agent.reply(user_query=user_query, patient_context=patient_context))

        # Log the final response sent to the user
        logging.info(f"Final response sent to user: {response}")
        return response
    except Exception as e:
        # Log the error and return a default response
        logging.error(f"Error in default_response: {e}", exc_info=True)
        return "Sorry, I encountered an error while processing your request."


def followup_response(user_query, thread_id):
    try:
        # Get or create an event loop for the current thread
        try:
            loop = asyncio.get_event_loop()
        except RuntimeError as e:
            if "no current event loop" in str(e):
                loop = asyncio.new_event_loop()
                asyncio.set_event_loop(loop)
            else:
                raise e

        # Run the coroutine synchronously
        patient_followup_questions = str(get_follow_up_questions(thread_id)).strip()

        # Format the patient context as a structured string
        patient_context = f"""
**Patient Context**
- Follow-up Questions: {patient_followup_questions}
"""

        # Log the patient context for debugging
        logging.info(f"Patient Context: {patient_context}")

        # Pass patient_context to the reply method
        response = loop.run_until_complete(primary_agent.reply(user_query=user_query, patient_context=patient_context))

        # Log the final response sent to the user
        logging.info(f"Final response sent to user: {response}")
        return response
    except Exception as e:
        # Log the error and return a default response
        logging.error(f"Error in default_response: {e}", exc_info=True)
        return "Sorry, I encountered an error while processing your request."

def reasoning_response(user_query):
    try:
        # Get or create an event loop for the current thread
        try:
            loop = asyncio.get_event_loop()
        except RuntimeError as e:
            if "no current event loop" in str(e):
                loop = asyncio.new_event_loop()
                asyncio.set_event_loop(loop)
            else:
                raise e

        response = loop.run_until_complete(reasoning_agent.reply(user_query=user_query))

        return response
    except Exception as e:
        # Log the error and return a default response
        logging.error(f"Error in default_response: {e}", exc_info=True)
        return "Sorry, I encountered an error while processing your request."

def recommendation_response(user_query, thread_id):
    try:
        # Get or create an event loop for the current thread
        try:
            loop = asyncio.get_event_loop()
        except RuntimeError as e:
            if "no current event loop" in str(e):
                loop = asyncio.new_event_loop()
                asyncio.set_event_loop(loop)
            else:
                raise e

        # Run the coroutine synchronously
        response = loop.run_until_complete(recommendation_agent.reply(user_query=user_query))
        
        return response
    except Exception as e:
        # Log the error and return a default response
        logging.error(f"Error in default_response: {e}", exc_info=True)
        return "Sorry, I encountered an error while processing your request."