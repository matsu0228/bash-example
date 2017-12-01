#!/bin/bash

# you shoud return 1 (none zero) when an error occure and exit

if [ -z "$1" ]; then
  echo -e "you should set something"
  exit 1
fi

if [ ! -z "$1" ]; then
  echo "your option is $1"
fi