#!/bin/bash

if [ $# -eq 0 ]
then
    echo "Error: No filename provided"
    exit 1
fi

file=$1

while true
do
    if [ ! -e "$file" ]
    then
        msg="$(date): ERROR - File does not exist"
        echo "$msg" >&2
        echo "$msg" >> error.log
    else
        echo "File is safe"
    fi
    sleep 5
done

