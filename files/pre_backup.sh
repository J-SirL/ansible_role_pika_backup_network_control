#!/bin/bash

# Define the home network IP prefix
HOME_NETWORK_PREFIX="192.168.68."

# Get the current IP address of the system
CURRENT_IP=$(hostname -I | awk '{print $1}')

# Check if the current IP matches the home network prefix
if [[ $CURRENT_IP == $HOME_NETWORK_PREFIX* ]]; then
  echo "Connected to home network. Proceeding with pre-backup tasks..."

#  # Example: Stop a service
#  sudo systemctl stop myservice

  # Example: Create a snapshot
#  sudo btrfs subvolume snapshot /home /home/snapshot

  echo "Pre-backup tasks completed."
else
  echo "Not connected to home network. Skipping pre-backup tasks."
  exit 1
fi
