#!/bin/bash

SERVICE=$1
if [ -z "$SERVICE" ]; then
  echo "Usage: ./check_service.sh servicename"
  exit 1
fi

if sysctl is-active --quiet "$SERVICE"; then
  echo " $SERVICE is running"
else 
  echo "$SERVICE is not running"
fi
