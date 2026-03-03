#!/bin/bash

SOURCE_DIR=$1
BACKUP_DIR="$HOME/backups"
DATE=$(date +%Y-%m-%d)

if [ -z "$SOURCE_DIR" ]; then
echo "please provide a dir to backup"
echo "usage: ./backup_dir.sh /path/to/directory"
exit 1
fi

if [ ! -d "$SOURCE_DIR" ]; then 
echo "dir does not exist: $SOURCE_DIR"
exit 1
fi

mkdir -p "$BACKUP_DIR"

tar -czf "$BACKUP_DIR/backup_$DATE.tar.gz" "$SOURCE_DIR"

echo "backup completed successfully"
echo "backup location: $BACKUP_DIR/backup_$DATE.tar.gz"
