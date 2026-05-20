#!/bin/bash

# Check input provided
if [ -z "$1" ]; then
    echo "Please provide a file or directory name"
    exit 1
fi

# Check file or directory
if [ -f "$1" ] || [ -d "$1" ]; then
    echo "It is either a file or a directory: $1"
else
    echo "Not found: $1"
fi
