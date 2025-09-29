from robot.api.deco import keyword
from dotenv import load_dotenv
import os

load_dotenv()

@keyword
def get_env_variable(name):
    """Returns the value of the environment variable 'name'."""
    value = os.getenv(name)
    if value is None:
        raise ValueError(f"Environment variable '{name}' not found in .env")
    return value
