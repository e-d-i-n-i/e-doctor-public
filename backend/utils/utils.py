import re
import json
from langchain_community.utilities import SQLDatabase
from config.settings import DATABASE_CONFIG

# Utility to handle error responses
def handle_error(e, error_type="General"):
    if error_type == "SQL":
        print(f"DEBUG: SQL Programming Error - {str(e)}")
        return (
            "I'm sorry, but the requested information could not be retrieved. "
            "It seems the required data is missing from the system or the query encountered an issue. "
            "Please verify the patient's records or consult technical support if the problem persists."
        )
    else:
        print(f"DEBUG: General Error - {str(e)}")
        return (
            "Apologies, an unexpected error occurred while processing your request. "
            "Please try again or contact the technical support team for assistance."
        )
    
def validate_password(password):
    """
    Validate password strength.
    Must contain at least:
    - 8 characters
    - 1 uppercase letter
    - 1 lowercase letter
    - 1 digit
    - 1 special character
    """
    if len(password) < 8:
        return "Password must be at least 8 characters long."
    if not re.search(r"[A-Z]", password):
        return "Password must contain at least one uppercase letter."
    if not re.search(r"[a-z]", password):
        return "Password must contain at least one lowercase letter."
    if not re.search(r"\d", password):
        return "Password must contain at least one digit."
    if not re.search(r"[!@#$%^&*(),.?\":{}|<>]", password):
        return "Password must contain at least one special character."
    return None

def extract_sql_query_runnable(text):
    # Regular expression to match all SQL queries
    sql_pattern = re.compile(r'\b(?:SELECT|INSERT|UPDATE|DELETE|CREATE|ALTER|DROP|CALL)\b.*?;', re.IGNORECASE)
    
    # Extract all matched SQL queries
    queries = sql_pattern.findall(text)
    
    # Return as a JSON serialized string (this makes it "serializable" for saving or transmitting)
    return json.dumps(queries)

def init_database():
    """
    Initializes the SQL database connection using environment variables.
    """
    user = DATABASE_CONFIG["user"]
    password = DATABASE_CONFIG["password"]
    host = DATABASE_CONFIG["host"]
    port = DATABASE_CONFIG["port"]
    database = DATABASE_CONFIG["database"]

    if not all([user, password, database]):
        raise ValueError("Missing required database configuration.")

    db_uri = f"mysql+pymysql://{user}:{password}@{host}:{port}/{database}"
    return SQLDatabase.from_uri(db_uri)

def json_to_string(json_input):
    """
    Converts a JSON object or JSON string to a formatted string.

    Args:
        json_input (dict or str): The JSON data as a Python dictionary or a JSON string.

    Returns:
        str: The formatted string representation of the JSON data.
    """
    try:
        # If input is a string, parse it into a dictionary
        if isinstance(json_input, str):
            json_data = json.loads(json_input)
        else:
            json_data = json_input
        
        # Convert dictionary to formatted string
        return json.dumps(json_data, indent=4)
    except (json.JSONDecodeError, TypeError) as e:
        return f"Error: Invalid JSON input. {e}"
