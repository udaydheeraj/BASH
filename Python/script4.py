import sys
import os
import tarfile
from datetime import datetime

#check input

if len(sys.argv) < 2:
    print("please provide dir to backup")
    print("usage: python3 script4.py /path/to/dir")
    sys.exit(1)

source_dir = sys.argv[1]

#validate directory
if not os.path.isdir(source_dir):
    print(f"Dir does not exist: {source_dir}")
    sys.exit(1)

backup_dir = os.path.expanduser("~/backups")
os.makedirs(backup_dir, exist_ok=True)

