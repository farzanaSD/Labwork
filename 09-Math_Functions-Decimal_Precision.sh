#!/bin/bash

# Square root of 10
echo "Square root of 10 (scale=4): $(echo "scale=4; sqrt(10)" | bc -l)"

# Sine of π/2
echo "Sine of (3.14159/2) (scale=4): $(echo "scale=4; s(3.14159/2)" | bc -l)"

# Division
echo "Division 10 / 3 (scale=3): $(echo "scale=3; 10 / 3" | bc -l)"
