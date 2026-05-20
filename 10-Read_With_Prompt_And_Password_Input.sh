#!/bin/bash

# User Input Example (Age + Password)

# Taking age input
read -p "Enter your age: " age

# Taking password input silently
read -s password

echo ""  # new line for better formatting

# Showing results clearly
echo "-----------------------------"
echo "User Input Summary"
echo "-----------------------------"
echo "Age entered      : $age"
echo "Password status  : Password received securely"
echo "-----------------------------"
