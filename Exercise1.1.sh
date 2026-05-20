#!/bin/bash

echo "Enter marks for Subject 1:"
read m1
echo "Enter marks for Subject 2:"
read m2
echo "Enter marks for Subject 3:"
read m3

avg=$(echo "scale=2; ($m1 + $m2 + $m3) / 3" | bc)

echo "Average Marks: $avg"

if (( $(echo "$avg >= 80" | bc -l) ))
then
    echo "Grade: A+"
elif (( $(echo "$avg >= 60" | bc -l) ))
then
    echo "Grade: B"
else
    echo "Grade: Fail"
fi

