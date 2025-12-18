#!/usr/bin/env bash
set -euo pipefail

# Enable 32-bit architecture
sudo dpkg --add-architecture i386
# Refresh package index
sudo apt update
# Install Steam
sudo apt install -y steam

echo "Finished installing Steam"
