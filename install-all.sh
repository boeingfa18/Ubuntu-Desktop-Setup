#!/usr/bin/env bash
set -euo pipefail

# Determine repository root of scripts
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

# Run each installer script
bash "${SCRIPT_DIR}/install-visual-studio-code.sh"
bash "${SCRIPT_DIR}/install-google-chrome.sh"
bash "${SCRIPT_DIR}/install-docker-desktop.sh"
bash "${SCRIPT_DIR}/install-docker-compose.sh"
bash "${SCRIPT_DIR}/install-python3.sh"
bash "${SCRIPT_DIR}/install-steam.sh"
bash "${SCRIPT_DIR}/obs-studio.sh"
bash "${SCRIPT_DIR}/install-virtualbox.sh"
bash "${SCRIPT_DIR}/install-wine.sh"
bash "${SCRIPT_DIR}/install-vlc.sh"
bash "${SCRIPT_DIR}/install-warp-cli.sh"
bash "${SCRIPT_DIR}/install-nordvpn-gui.sh"

echo "Finished running all installer scripts"
