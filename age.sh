#!/bin/bash

# Prompt user for age
read -p "Enter your age: " age

# Check if input is a number
if ! [[ "$age" =~ ^[0-9]+$ ]]; then
    echo "Please enter a valid number."
    exit 1
fi

# Check age condition
if [ "$age" -ge 18 ]; then
    echo "You are an adult"
else
    echo "You are a minor."
fi

