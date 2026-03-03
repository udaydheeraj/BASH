import getpass
import os
from datetime import datetime

name = "uday"
print(f"name is {name} ")
print("today is : ", datetime.now())
print("logged in as user:", getpass.getuser())
print("currrent directory:", os.getcwd())