#!/bin/bash

# Initialize counter
i=1

# While loop condition
while [ $i -le 10 ]
do
    echo "Number: $i"
    i=$((i+1))
done
