#!/bin/bash

# Prompt user to enter directory name
read -p "Enter the directory name: " dir_name

# Create main directory if it doesn't exist
mkdir -p "$dir_name"

# Create subdirectories Monday to Friday
for day in Monday Tuesday Wednesday Thursday Friday
do
    mkdir -p "$dir_name/$day"
done

echo "Subdirectories Monday to Friday created successfully inside '$dir_name'."

