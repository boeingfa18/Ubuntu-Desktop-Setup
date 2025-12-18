#!/usr/bin/env bash
set -euo pipefail

# Refresh package index
sudo apt update
# Install VLC
sudo apt install -y vlc

echo "Finished installing VLC media player"
