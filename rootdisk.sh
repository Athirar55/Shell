#!/bin/bash

# Get disk usage percentage of root filesystem
usage=$(df / | awk 'NR==2 {gsub("%",""); print $5}')

# Check if usage exceeds 90%
if [ "$usage" -gt 90 ]; then
    echo "Disk usage high"
else
    echo "Disk usage normal."
fi

