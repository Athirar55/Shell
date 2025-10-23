#!/bin/bash
read -p "Enter the name of the file or directory: " name
if [ ! -e "$name" ]; then
    echo "Error: '$name' does not exist."
    exit 1
fi
echo "Current permissions for '$name':"
ls -ld "$name"
read -p "Enter the new permission : " perm
chmod "$perm" "$name"
if [ $? -eq 0 ]; then
    echo "Permissions changed successfully!"
    ls -ld "$name"
else
    echo "Failed to change permissions."
fi

