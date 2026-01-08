#!/bin/bash

# Service name (varies by distro)
SERVICE="sshd"

# Check if SSH service is active
if systemctl is-active --quiet "$SERVICE"; then
    echo "SSH service is running"
else
    echo "SSH service is not running. Starting SSH service..."
    sudo systemctl start "$SERVICE"

    # Recheck service status
    if systemctl is-active --quiet "$SERVICE"; then
        echo "SSH service started."
    else
        echo "Failed to start SSH service."
    fi
fi

