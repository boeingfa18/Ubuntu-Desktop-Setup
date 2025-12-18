#!/usr/bin/env bash
set -euo pipefail

# Refresh package index
sudo apt update
# Install prerequisites
sudo apt install -y wget gpg

# Download and install Chrome .deb
CHROME_DEB="google-chrome-stable_current_amd64.deb"
wget -q https://dl.google.com/linux/direct/${CHROME_DEB}
sudo apt install -y ./${CHROME_DEB}
rm -f ${CHROME_DEB}

echo "Finished installing Google Chrome"
