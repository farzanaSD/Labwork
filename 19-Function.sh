#!/bin/bash

# Function 1: Greeting
greet() {
    echo "Hello, $1!"
}

greet "Farhan"

echo ""

# Function 2: Sum of two numbers
sum() {
    echo $(($1 + $2))
}

echo "Sum (1 + 2) = $(sum 1 2)"

echo ""

# Function 3: Add with return-style output
add() {
    local result=$(($1 + $2))
    echo $result
}

result=$(add 5 3)

echo "The sum is $result"
