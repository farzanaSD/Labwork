#!/bin/bash

echo "---- Output Redirection ----"

# Overwrite file
echo "Hello, World!" > output.txt

# Append to file
echo "Another line" >> output.txt

echo "Data written to output.txt"

echo ""
echo "---- Error Redirection ----"

# Error output redirect
ls /nonexistent 2> error.log

echo "Error saved to error.log"

echo ""
echo "---- Combined Output + Error ----"

# stdout + stderr together
ls /tmp /nonexistent > all_output.log 2>&1

echo "Combined output saved to all_output.log"

echo ""
echo "---- Function Error Handling ----"

do_something() {
    if [ ! -f "important_file.txt" ]; then
        echo "Error: important_file.txt not found!" >&2
        return 1
    fi

    echo "File exists!"
}

do_something

if [ $? -ne 0 ]; then
    echo "Script encountered an error" >&2
    exit 1
fi
