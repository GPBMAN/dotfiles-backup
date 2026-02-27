#!/bin/bash

choice=$(printf "Hyprland\nHyprpaper\nPicom\nWaybar" | rofi -dmenu -p "Config Menu")

case $choice in
    "Hyprland") alacritty -e nvim /home/Brob/.config/hypr/hyprland.conf ;;
    "Hyprpaper") alacritty -e nvim /home/Brob/.config/hypr/hyprpaper.conf ;;
    "Picom")  alacritty -e nvim /home/Brob/.config/picom/picom.conf ;;
    "Waybar") alacritty -e nvim /home/Brob/.config/waybar/config ;;
esac