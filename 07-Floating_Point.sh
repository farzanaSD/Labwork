#!/bin/bash

# Floating Point Arithmetic Operations using bc in Bash

# Subtraction of decimal numbers
echo "Subtraction = $(echo "10.5 - 4.2" | bc -l)"

# Multiplication of decimal numbers
echo "Multiplication = $(echo "3.5 * 2.0" | bc -l)"

# Division operation
echo "Division = $(echo "5 / 2" | bc -l)"
