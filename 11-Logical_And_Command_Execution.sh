#!/bin/bash

echo "---- Directory Operation ----"

mkdir mydir && echo "Directory created successfully"

mkdir mydir || echo "Directory already exists"

echo ""
echo "---- Sequential Commands ----"

echo "Hello"; echo "World"
