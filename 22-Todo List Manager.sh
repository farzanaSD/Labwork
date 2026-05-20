#!/bin/bash

FILE="todo.txt"

# Ensure file exists
touch $FILE

case "$1" in

add)
    if [ -z "$2" ]; then
        echo "Please provide a task to add"
        exit 1
    fi

    echo "[ ] $2" >> "$FILE"
    echo "Task added: $2"
    ;;

list)
    if [ ! -s "$FILE" ]; then
        echo "No tasks found"
    else
        nl -w1 -s". " "$FILE"
    fi
    ;;

done)
    sed -i "${2}s/\[ \]/[x]/" "$FILE"
    echo "Task marked as done ✔"
    ;;

clear)
    > "$FILE"
    echo "Todo list cleared"
    ;;

search)
    grep "$2" "$FILE"
    ;;

*)
    echo "Usage:"
    echo "./todo.sh add \"task\""
    echo "./todo.sh list"
    echo "./todo.sh done <number>"
    echo "./todo.sh clear"
    echo "./todo.sh search <keyword>"
    ;;
esac
