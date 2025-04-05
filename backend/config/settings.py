import os
from dotenv import load_dotenv

# Load environment variables
load_dotenv()

def get_env_var(key, default="edini-coder"):
    """
    Retrieve an environment variable or a default value if not found.
    """
    return os.getenv(key, default)

DATABASE_CONFIG = {
    "user": get_env_var("DB_USER"),
    "password": get_env_var("DB_PASSWORD"),
    "host": get_env_var("DB_HOST", "localhost"),
    "port": get_env_var("DB_PORT", "3306"),
    "database": get_env_var("DB_NAME"),
}
