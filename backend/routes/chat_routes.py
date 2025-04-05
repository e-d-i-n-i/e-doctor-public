from uuid import uuid4
from flask import Blueprint, request, session, jsonify
import logging
from datetime import datetime
from sqlalchemy import create_engine, Column, String, Enum, Text, DateTime
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

from services.response_service import (
    default_response
)
from config.config import Config

# Database setup
DATABASE_URI = Config.SQLALCHEMY_DATABASE_URI  # Replace with your database URI
engine = create_engine(DATABASE_URI)
Base = declarative_base()
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

# Chat message model
class ChatMessage(Base):
    __tablename__ = "admin_ai_chat_history"
    id = Column(String(36), primary_key=True, default=lambda: str(uuid4()))  # Use UUID
    session_id = Column(String(36), index=True)  # Session ID for each conversation
    thread_id = Column(String(36), index=True)  # Thread ID for grouping conversations, it is the value of Diagnosi ID
    role = Column(Enum("Human", "AI"), nullable=False)
    content = Column(Text, nullable=False)
    reasoning = Column(Text, nullable=True)  # New
    created_at = Column(DateTime, default=datetime.utcnow)

Base.metadata.create_all(bind=engine)

# Blueprint and chatbot instance
chat_bp = Blueprint("chat", __name__)


def get_chat_history(thread_id):
    db = SessionLocal()
    try:
        messages = (
            db.query(ChatMessage)
            .filter(ChatMessage.thread_id == thread_id)
            .order_by(ChatMessage.created_at)
            .all()
        )
        if not messages:
            # Initialize with a welcome message if no history exists
            session_id = session.get("session_id", None)
            if not session_id:
                session_id = initialize_session()  # Ensure session is initialized

            welcome_message = """**Welcome to New Chat**  
            This conversation will be recorded and saved in your chat history.  
            You can preview it later before exiting, but once your session ends,  
            it will no longer be accessible."""
            add_message(session_id, thread_id, role="AI", content=welcome_message)

            messages = (
                db.query(ChatMessage)
                .filter(ChatMessage.thread_id == thread_id)
                .order_by(ChatMessage.created_at)
                .all()
            )

        return [
            {
                "role": msg.role,
                "content": msg.content,
                "reasoning": msg.reasoning,
                "timestamp": msg.created_at.strftime("%Y-%m-%d %H:%M:%S.%f"),  # Include microseconds
            }
            for msg in messages
        ]
    except Exception as e:
        logging.error(f"Error fetching chat history for thread {thread_id}: {e}")
        return []
    finally:
        db.close()

def add_message(session_id, thread_id, role, content, reasoning = None):
    db = SessionLocal()
    try:
        # Use default values if session_id is missing
        if not session_id:
            session_id = initialize_session()

        new_message = ChatMessage(
            session_id=session_id,
            thread_id=thread_id,
            role=role,
            content=content,
            reasoning=reasoning,
        )
        db.add(new_message)
        db.commit()
    except Exception as e:
        logging.error(f"Error adding message to database: {e}")
        db.rollback()  # Rollback transaction if an error occurs
    finally:
        db.close()

def initialize_session():
    try:
        session_id = str(uuid4())
        session["session_id"] = session_id
        return session_id
    except Exception as e:
        logging.error(f"Error initializing session: {e}")
        return str(uuid4())  # Return a fallback session ID

def handle_user_query(user_query, thread_id):
    command_map = {
        "/start": default_response,
        "/initial_investigation": default_response,
        "/initial_examination": default_response,
        "/check_examination": default_response,
        "/continue_investigation": default_response,
        "/other_examination": default_response,
        "/final_diagnosis": default_response,
        "/prescribe": default_response,
        "/meal_recommendation": default_response,
        "/lifestyle_changes": default_response,
        # Add other commands here
    }
    
    # Fetch chat history as a list of role-content pairs    
    chat_history = get_chat_history(thread_id)
    formatted_history = [{"role": msg["role"], "content": msg["content"]} for msg in chat_history]
    
    for command, func in command_map.items():
        if command in user_query:
            response_content = func(user_query=user_query, thread_id=thread_id)
            reasoning = "reasoning"  # Replace with actual reasoning logic
            logging.info(f"Command '{command}' matched. Response: {response_content}, Reasoning: {reasoning}")
            return response_content, reasoning

    # If no command matches, use the default response
    response_content = default_response(user_query, thread_id)
    reasoning = "reasoning"  # Replace with actual reasoning logic
    logging.info(f"No command matched. Using default response: {response_content}, Reasoning: {reasoning}")
    return response_content, reasoning

@chat_bp.route("/load-chat/<thread_id>", methods=["GET"])
def load_chat(thread_id):
    try:
        chat_history = get_chat_history(thread_id)
        return jsonify({"chat_history": chat_history})
    except Exception as e:
        logging.error(f"Error loading chat history for thread {thread_id}: {e}")
        return jsonify({"error": "Unable to load chat history"}), 500

@chat_bp.route("/chat", methods=["POST"])
def chat():
    try:
        data = request.json
        session_id = session.get("session_id", None)
        thread_id = data.get("thread_id")
        if not thread_id:
            return jsonify({"error": "Thread ID is required"}), 400

        if not session_id:
            session_id = initialize_session()

        user_message = data.get("message", "").strip()

        if not user_message:
            return jsonify({"error": "Message is required"}), 400

        # Process query and response
        response, reasoning = handle_user_query(user_query=user_message, thread_id=thread_id)

        # Save user and AI messages to the database
        add_message(session_id, thread_id, "Human", user_message)
        add_message(session_id, thread_id, "AI", response, reasoning=reasoning)

        # Return response and updated chat history
        return jsonify({
            "response": response,
            "reasoning": reasoning,  # Include reasoning in response
            "chat_history": get_chat_history(thread_id),
            "thread_id": thread_id,
        })

    except Exception as e:
        logging.error(f"Error in chat endpoint: {e}", exc_info=True)
        return jsonify({"error": "Internal server error"}), 500