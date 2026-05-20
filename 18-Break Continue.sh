#!/bin/bash

echo "---- Using Break ----"
for i in {1..10}
do
    if [ $i -eq 6 ]; then
        echo "Break at $i"
        break
    fi
    echo "Number: $i"
done

echo ""
echo "---- Using Continue ----"
for i in {1..10}
do
    if [ $i -eq 6 ]; then
        echo "Skip number $i"
        continue
    fi
    echo "Number: $i"
done
