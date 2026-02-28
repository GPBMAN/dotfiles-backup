#!/bin/bash

choice=$(printf "Frieren\nGoku\nRain" | rofi -dmenu -p "Wallpaper Menu")

case $choice in
    "Frieren") killall hyprpaper && hyprpaper -c /home/Brob/.config/hypr/Frieren-Wallpaper.conf ;;
    "Goku") killall hyprpaper && hyprpaper -c /home/Brob/.config/hypr/Goku-Wallpaper.conf ;;
    "Rain") killall hyprpaper && hyprpaper -c /home/Brob/.config/hypr/Rain-Wallpaper.conf ;;
esac