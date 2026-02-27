#!/bin/bash

choice=$(printf "App Launcher\nPower Menu\nConfigs\nWallpapers" | rofi -dmenu -i -p "Launch Menu")

case $choice in
	"App Launcher") rofi -show drun ;;
	"Power Menu") /home/Brob/.config/hypr/power-menu.sh ;;
	"Configs") /home/Brob/.config/hypr/config-menu.sh ;;
	"Wallpapers") /home/Brob/.config/hypr/wallpaper-menu.sh ;;
esac
