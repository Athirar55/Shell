#!/bin/bash

echo "Searching for symbolic links in the / directory..."
echo "-----------------------------------------------"

# Find and list symbolic links in /
find / -maxdepth 1 -type l 2>/dev/null

echo "Search completed."

