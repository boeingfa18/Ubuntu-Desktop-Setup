# Ubuntu Desktop Setup Scripts

Collection of one-shot installer scripts for common desktop applications on Ubuntu. Each script is standalone and can be run individually.

## Available installers
- Visual Studio Code (`install-visual-studio-code.sh`)
- Google Chrome (`install-google-chrome.sh`)
- Docker Desktop (`install-docker-desktop.sh`)
- Docker Compose plugin (`install-docker-compose.sh`)
- Python 3 with pip/venv (`install-python3.sh`)
- Steam (`install-steam.sh`)
- OBS Studio (`obs-studio.sh`)
- VirtualBox (`install-virtualbox.sh`)
- Wine (`install-wine.sh`)
- VLC (`install-vlc.sh`)
- Cloudflare WARP CLI (with registration) (`install-warp-cli.sh`)
- NordVPN CLI/GUI (`install-nordvpn-gui.sh`)

## Usage
Make scripts executable if needed, then run with bash. Example invocations for each installer:

```bash
# Visual Studio Code
bash ./install-visual-studio-code.sh

# Google Chrome
bash ./install-google-chrome.sh

# Docker Desktop
bash ./install-docker-desktop.sh

# Docker Compose plugin
bash ./install-docker-compose.sh

# Python 3 with pip/venv
bash ./install-python3.sh

# Steam
bash ./install-steam.sh

# OBS Studio
bash ./obs-studio.sh

# VirtualBox
bash ./install-virtualbox.sh

# Wine
bash ./install-wine.sh

# VLC
bash ./install-vlc.sh

# Cloudflare WARP CLI (with registration)
bash ./install-warp-cli.sh

# NordVPN CLI/GUI
bash ./install-nordvpn-gui.sh
```

### Run everything at once
Use `install-all.sh` to execute every installer in sequence:
```bash
bash ./install-all.sh
```
All installer scripts **must reside in the same directory** as `install-all.sh` for this to work.

## Notes
- Scripts use `sudo` and expect an Ubuntu-based system with internet access.
- Review scripts before running and execute only the installers you need.
