#!/bin/bash

FILENAME=$1

if [ -z $FILENAME ]; then
  echo "please provide the file name"
  echo " usage : /script3.sh test.txt"
  exit 1
fi

touch $FILENAME
echo " file '$FILENAME' is created successfully"