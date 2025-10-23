#!/bin/bash

DIR="ChatGPT"

if [ -f "$DIR" ]; then
  echo "Directory '$DIR' already exists."
else
  mkdir "$DIR"
  echo "Directory '$DIR' created."
fi

