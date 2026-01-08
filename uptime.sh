#!/bin/bash

# Get system uptime in seconds
uptime_seconds=$(cut -d. -f1 /proc/uptime)

# 1 hour = 3600 seconds
one_hour=3600

# Compare uptime
if [ "$uptime_seconds" -lt "$one_hour" ]; then
    echo "System recently started"
else
    echo "System has been running for a while."
fi

