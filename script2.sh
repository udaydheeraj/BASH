#!/bin/bash

ENV=$1

if [ -z "$ENV" ]; then
 echo "please provide env name"
 echo "usage: ./script2.sh dev"
 exit 1
fi

if [ $ENV = "prod" ]; then
 echo "warning! you are working in prod"
else
 echo "ENV is set to $ENV"
fi
