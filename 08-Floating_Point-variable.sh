#!/bin/bash

# Floating Point Addition using bc in Bash

# Declaring variables
a=3.5
b=2.2

# Performing addition using bc (for decimal calculation)
result=$(echo "$a + $b" | bc -l)

# Displaying result
echo "Sum: $result"
