#!/bin/bash

# Prompt for interface name
echo "Enter network interface name:"
read iface

# Check if interface exists and is UP
if ip link show "$iface" &>/dev/null; then
    state=$(ip link show "$iface" | grep -o "state [A-Z]*" | awk '{print $2}')
    if [ "$state" = "UP" ]; then
        echo "Interface is up"
    else
        echo "Interface is down"
    fi
else
    echo "Interface does not exist"
fi

