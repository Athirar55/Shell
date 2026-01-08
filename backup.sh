#!/bin/bash

DIR="backup"

if [ ! -d "$DIR" ]; then
    mkdir "$DIR"
    echo "Directory '$DIR' created."
else
    echo "Directory '$DIR' already exists."
fi

