#!/usr/bin/env bash
set -euo pipefail

# Refresh package index
sudo apt update
# Install prerequisites for repository setup
sudo apt install -y wget gpg apt-transport-https

# Import Microsoft GPG key
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
rm -f packages.microsoft.gpg

# Add VS Code apt repository
sudo sh -c 'echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'

# Install Visual Studio Code
sudo apt update
sudo apt install -y code

echo "Finished installing Visual Studio Code"
