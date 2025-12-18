#!/usr/bin/env bash
set -euo pipefail

# Refresh package index
sudo apt update
# Install Python 3 with pip and venv
sudo apt install -y python3 python3-pip python3-venv

# Display installed versions
python3 --version
pip3 --version

echo "Finished installing Python 3 with pip and venv support"
