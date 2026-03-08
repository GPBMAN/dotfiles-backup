#!/bin/bash

choice=$(printf "App Launcher\nPower Menu\nConfigs\nWallpapers\nAdd Wallpaper" | rofi -dmenu -i -p "Launch Menu")

case $choice in
	"App Launcher") rofi -show drun ;;
	"Power Menu") /home/Brob/.config/hypr/power-menu.sh ;;
	"Configs") /home/Brob/.config/hypr/config-menu.sh ;;
	"Wallpapers") /home/Brob/.config/hypr/wallpaper-menu.sh ;;
	"Add Wallpaper") alacritty -e bash /home/Brob/.config/hypr/qol-scripts/add-wallpaper.sh ;;
esac
