#!/bin/bash

USAGE=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

echo "disk usage: $USAGE"

if [ "$USAGE" -gt 80 ]; then
   echo "diskusage is high"
else
   echo "disk usage is norml"
fi