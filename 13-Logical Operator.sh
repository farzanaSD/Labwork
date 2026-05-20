#!/bin/bash

# Check if file argument is provided
if [ -z "$1" ]; then
    echo "Please provide a file name"
    exit 1
fi

# Check file exists and is readable
if [[ -f "$1" && -r "$1" ]]; then
    echo "File exists and is readable: $1"
else
    echo "File does not exist or is not readable: $1"
fi

