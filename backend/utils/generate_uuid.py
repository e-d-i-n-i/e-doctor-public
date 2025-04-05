import uuid

def generate_uuid() -> str:
    """
    Generates a UUID in the format: xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
    Example: 1846f2a6-e01c-11ef-a1d1-005056c00001
    Returns:
        str: A UUID string.
    """
    return str(uuid.uuid4())

# Example usage
print(generate_uuid())  # Outputs something like: 1846f2a6-e01c-11ef-a1d1-005056c00001