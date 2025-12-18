#!/usr/bin/env bash
set -euo pipefail

# Refresh package index
sudo apt update
# Install prerequisites
sudo apt install -y curl gnupg lsb-release

# Add Cloudflare WARP GPG key
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://pkg.cloudflareclient.com/pubkey.gpg | sudo gpg --yes --dearmor -o /etc/apt/keyrings/cloudflare-warp-archive-keyring.gpg

# Add Cloudflare WARP repository
echo "deb [signed-by=/etc/apt/keyrings/cloudflare-warp-archive-keyring.gpg] https://pkg.cloudflareclient.com/ $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/cloudflare-client.list > /dev/null

# Install Cloudflare WARP
sudo apt update
sudo apt install -y cloudflare-warp

# Enable service and register client
sudo systemctl enable --now warp-svc
sudo warp-cli --accept-tos register
sudo warp-cli set-mode warp
sudo warp-cli connect

echo "Finished installing and registering Cloudflare WARP CLI"
