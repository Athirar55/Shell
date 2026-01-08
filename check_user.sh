#!/bin/bash

# Check if user 'john' is logged in
if who | awk '{print $1}' | grep -qw "john"; then
    echo "User is logged in"
else
    echo "User is not logged in"
fi

