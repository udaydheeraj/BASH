#!/bin/bash

arg=$1
DIR=$( $arg )

if [ -z "$arg" ]; then
   echo " please provide dir path"
   echo " usage: ./count.files.sh /path/to/dir "
   exit 1
fi


if [ ! -d "$DIR" ]; then
   echo " dir does not exist: $DIR"
   exit 1
fi

FILE_COUNT=$(ls -1 "$DIR" | wc -l)

echo " directory: $DIR"
echo " number of files: $FILE_COUNT"


