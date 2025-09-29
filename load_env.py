from robot.api.deco import keyword
from dotenv import load_dotenv
import os

load_dotenv()

@keyword
def get_env_variable(name):
    return os.getenv(name)
