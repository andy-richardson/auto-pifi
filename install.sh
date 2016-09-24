#!/bin/bash
# Get script directory
cd "$(dirname "$0")"

# Check for dependencies
HOSTAPD=$(systemctl status hostapd | grep "not-found")
if [ ! "$HOSTAPD" = "" ]; then
  read -p "Dependency 'hostapd' not installed. Install now (requires connection) [Y/n]: " yn

  if [[ "$yn" =~ ^$|[yY] ]]; then
    pacman -S hostapd --noconfirm
  fi
fi

# Check for existing hostapd.config
if [ -a "/etc/hostapd/hostapd.conf" ]; then
  read -p "Hostapd config file already exists. Overwrite [y/N]: " yn

  if [[ "$yn" =~ [yY] ]]; then
    cp lib/hostapd.conf /etc/hostapd/hostapd.conf
  fi
fi

# Copy files
cp lib/auto-pifi /usr/lib/systemd/scripts/auto-pifi
cp lib/auto-pifi.* /etc/systemd/system/

# Enable timer
systemctl enable auto-pifi.timer
