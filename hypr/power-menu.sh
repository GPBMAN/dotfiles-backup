#!/bin/bash

choice=$(printf "Update\nShutdown\nReboot\nSuspend\nLogout\nLock" | rofi -dmenu -i -p "Power Menu")


case $choice in
    "Update") alacritty -e sudo dnf update ;;
    "Shutdown") shutdown now ;;
    "Reboot") reboot ;;
    "Suspend") systemctl suspend ;;
    "Logout") pkill -KILL -u $USER ;;
    "Lock") hyprlock ;;
esac 
