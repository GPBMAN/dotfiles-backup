#!/bin/bash

read -p "Enter Wallpaper name: " name

CONFIG_PATH="$HOME/.config/hypr/wallpapers/${name}-Wallpaper.conf"
WALLPAPER_PATH="$HOME/Pictures/Wallpapers/${name}-Wallpaper.png"

# Make sure the directory exists
mkdir -p "$(dirname "$CONFIG_PATH")"

# Create or overwrite the config file with the wallpaper paths
echo -e "preload=${WALLPAPER_PATH}\nwallpaper=,${WALLPAPER_PATH}" > "$CONFIG_PATH"

echo "Config created at $CONFIG_PATH"
