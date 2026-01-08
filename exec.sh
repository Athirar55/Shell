#!/bin/bash

# Check if filename is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <exec.sh>"
    exit 1
fi

file="$1"

# Check if file exists and is executable
if [ -x "$file" ]; then
    echo "File is executable"
else
    echo "File is not executable"
fi

