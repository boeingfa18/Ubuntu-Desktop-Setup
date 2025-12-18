#!/usr/bin/env bash
set -euo pipefail

# Refresh package index
sudo apt update
# Install VirtualBox
sudo apt install -y virtualbox

echo "Finished installing VirtualBox"
