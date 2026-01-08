#!/bin/bash

# Define load threshold
threshold=2.0

# Get the 1-minute load average
load_avg=$(awk '{print $1}' /proc/loadavg)

# Compare load average using bc (for floating-point comparison)
if (( $(echo "$load_avg > $threshold" | bc -l) )); then
    echo "Warning: System load is high! (Load Average: $load_avg)"
else
    echo "System load normal."
fi

