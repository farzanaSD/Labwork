#!/bin/bash

# Check if input is provided
if [ -z "$1" ]; then
    echo "Please provide a number"
    exit 1
fi

# Number comparison
if [ "$1" -gt 10 ]; then
    echo "Greater than 10"

elif [ "$1" -eq 10 ]; then
    echo "Equal to 10"

else
    echo "Less than 10"
fi
