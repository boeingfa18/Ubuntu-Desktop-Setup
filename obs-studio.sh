#!/usr/bin/env bash
set -euo pipefail

# Refresh package index
sudo apt update
# Install OBS Studio
sudo apt install -y obs-studio

echo "Finished installing OBS Studio"
