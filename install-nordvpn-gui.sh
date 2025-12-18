#!/usr/bin/env bash
set -euo pipefail

# Refresh package index
sudo apt update
# Install prerequisites
sudo apt install -y curl gpg

# Add NordVPN GPG key
sudo install -m 0755 -d /etc/apt/keyrings
curl -s https://repo.nordvpn.com/gpg/nordvpn_public.asc | sudo gpg --yes --dearmor -o /etc/apt/keyrings/nordvpn-archive-keyring.gpg

# Add NordVPN repository
echo "deb [signed-by=/etc/apt/keyrings/nordvpn-archive-keyring.gpg] https://repo.nordvpn.com/deb/nordvpn/debian stable main" | sudo tee /etc/apt/sources.list.d/nordvpn.list > /dev/null

# Install NordVPN CLI and GUI
sudo apt update
sudo apt install -y nordvpn nordvpn-gui

echo "Finished installing NordVPN GUI"
