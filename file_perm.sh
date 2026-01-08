#!/bin/bash

# Prompt user for filename
echo "Enter filename:"
read file

# Check if file exists
if [ -e "$file" ]; then
    # Display file permissions in symbolic form
    permissions=$(ls -l "$file" | awk '{print $1}')
    echo "File permissions for '$file': $permissions"
else
    echo "Error: File '$file' does not exist."
fi

