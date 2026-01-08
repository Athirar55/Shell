#!/bin/bash

# Read input string
echo "Enter a string:"
read input

# Count words
word_count=$(echo "$input" | wc -w)

# Print result
echo "Number of words: $word_count"

