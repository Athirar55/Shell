#!/bin/bash

DIR="athira"

if [ -d "$DIR" ]; then
  echo "Directory '$DIR' already exists."
else
  mkdir "$DIR"
  echo "Directory '$DIR' created."
fi


