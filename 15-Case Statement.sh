#!/bin/bash

# Check input
if [ -z "$1" ]; then
    echo "Please provide an option: start or stop"
    exit 1
fi

# Case statement
case "$1" in
    start)
        echo "Starting service"
        ;;
    stop)
        echo "Stopping service"
        ;;
    *)
        echo "Unknown option: $1"
        ;;
esac
