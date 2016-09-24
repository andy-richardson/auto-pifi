#!/bin/bash

# Stop timer
systemctl disable auto-pifi.timer

# Remove files
rm /usr/lib/systemd/scripts/auto-pifi
rm /etc/systemd/system/auto-pifi.*
