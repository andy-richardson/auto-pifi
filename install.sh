#!/bin/bash

# Get script directory
cd "$(dirname "$0")"

# Copy files
cp lib/auto-pifi /usr/lib/systemd/scripts/auto-pifi
cp lib/auto-pifi.* /etc/systemd/system/

# Enable timer
systemctl enable auto-pifi.timer
