#!/bin/bash

# Get current user's home directory
home_dir="$HOME"

# Check if home directory is under /home
if [[ "$home_dir" == /home/* ]]; then
    echo "Home directory standard"
else
    echo "Home directory non-standard"
fi

