#!/bin/bash

number=$(( RANDOM % 20 + 1 ))
attempts=0

while true
do
    echo "Guess a number between 1 and 20:"
    read guess
    attempts=$((attempts + 1))

    if [ $guess -gt $number ]
    then
        echo "Too high!"
    elif [ $guess -lt $number ]
    then
        echo "Too low!"
    else
        echo "Success!"
        echo "Attempts taken: $attempts"
        break
    fi
done

