#!/bin/bash

choice=$(printf "Hyprland\nHyprpaper\nPicom\nWaybar Config\nWaybar Style" | rofi -dmenu -p "Config Menu")

case $choice in
    "Hyprland") alacritty -e nvim /home/Brob/.config/hypr/hyprland.conf ;;
    "Hyprpaper") alacritty -e nvim /home/Brob/.config/hypr/hyprpaper.conf ;;
    "Picom")  alacritty -e nvim /home/Brob/.config/picom/picom.conf ;;
    "Waybar Config") alacritty -e nvim /home/Brob/.config/waybar/config ;;
    "Waybar Style") alacritty -e nvim /home/Brob/.config/waybar/style.css ;; 
esac
