#!/bin/bash

# Prompt user for directory name
echo "Enter directory name:"
read dir

# Check if directory exists
if [ -d "$dir" ]; then
    # Count only regular files
    file_count=$(find "$dir" -maxdepth 1 -type f | wc -l)
    echo "Number of files in '$dir': $file_count"
else
    echo "Error: Directory '$dir' does not exist."
fi

