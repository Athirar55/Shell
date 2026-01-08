#!/bin/bash

# Get available disk space in KB for /home
available_space=$(df /home | awk 'NR==2 {print $4}')

# Convert 1GB to KB
one_gb_kb=$((1024 * 1024))

# Compare available space
if [ "$available_space" -lt "$one_gb_kb" ]; then
    echo "Warning: Available disk space in /home is less than 1GB!"
else
    echo "Disk space is sufficient."
fi

