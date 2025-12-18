#!/usr/bin/env bash
set -euo pipefail

# Enable 32-bit architecture for Wine
sudo dpkg --add-architecture i386
# Refresh package index
sudo apt update
# Install Wine
sudo apt install -y wine64 wine32

echo "Finished installing Wine"
