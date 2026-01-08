#!/bin/bash

PACKAGE="nginx"

# Check if nginx is installed
if command -v nginx &>/dev/null; then
    echo "Nginx is installed"
else
    echo "Nginx is not installed. Installing nginx..."

    # Detect package manager and install nginx
    if command -v apt &>/dev/null; then
        sudo apt update && sudo apt install -y nginx
    elif command -v yum &>/dev/null; then
        sudo yum install -y nginx
    elif command -v dnf &>/dev/null; then
        sudo dnf install -y nginx
    else
        echo "Unsupported package manager. Please install nginx manually."
        exit 1
    fi

    # Verify installation
    if command -v nginx &>/dev/null; then
        echo "Nginx installed successfully."
    else
        echo "Nginx installation failed."
    fi
fi

