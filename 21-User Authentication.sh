#!/bin/bash

# User input
read -p "Enter username: " username
read -s -p "Enter password: " password
echo

found=0

# Read from file and check credentials
while read user pass
do
    if [[ "$username" == "$user" && "$password" == "$pass" ]]; then
        echo "Login Successful: Welcome, $username!"
        found=1
        break
    fi
done < userdata.txt

# Result check
if [ "$found" -eq 0 ]; then
    echo "Login Failed: Invalid username or password"
fi

