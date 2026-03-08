#!/bin/bash

choice=$(printf "Light House\nFrieren\nGoku\nRain\nMonochrome Horse\nTokyo Night\nGruvBox\nCeleste\nForest\nForest2\nForest3\nForest4\nForest5" | rofi -dmenu -p "Wallpaper Menu")

case "$choice" in
    "Light House")
        img="/home/Brob/Pictures/Wallpapers/LightHouse-Wallpaper.png"
        conf="/home/Brob/.config/hypr/Wallpapers/LightHouse-Wallpaper.conf"
        ;;
    "Frieren")
        img="/home/Brob/Pictures/Wallpapers/Frieren-Wallpaper.png"
        conf="/home/Brob/.config/hypr/Wallpapers/Frieren-Wallpaper.conf"
        ;;
    "Goku")
        img="/home/Brob/Pictures/Wallpapers/Goku-Wallpaper.png"
        conf="/home/Brob/.config/hypr/Wallpapers/Goku-Wallpaper.conf"
        ;;
    "Rain")
        img="/home/Brob/Pictures/Wallpapers/Rain-Wallpaper.png"
        conf="/home/Brob/.config/hypr/Wallpapers/Rain-Wallpaper.conf"
        ;;
    "Forest")
        img="/home/Brob/Pictures/Wallpapers/Forest-Minimalistic-Wallpaper.png"
        conf="/home/Brob/.config/hypr/Wallpapers/Forest-Wallpaper.conf"
        ;;
    "Forest2")
        img="/home/Brob/Pictures/Wallpapers/ForestF-Wallpaper1.png"
        conf="/home/Brob/.config/hypr/Wallpapers/ForestF-Wallpaper1.conf"
        ;;
    "Forest3")
        img="/home/Brob/Pictures/Wallpapers/ForestF-Wallpaper2.png"
        conf="/home/Brob/.config/hypr/Wallpapers/ForestF-Wallpaper2.conf"
        ;;
    "Forest4")
        img="/home/Brob/Pictures/Wallpapers/ForestF-Wallpaper3.png"
        conf="/home/Brob/.config/hypr/Wallpapers/ForestF-Wallpaper3.conf"
        ;;
    "Forest5")
        img="/home/Brob/Pictures/Wallpapers/ForestF-Wallpaper4.png"
        conf="/home/Brob/.config/hypr/Wallpapers/ForestF-Wallpaper4.conf"
        ;;
    "Monochrome Horse")
        img="/home/Brob/Pictures/Wallpapers/MonochromeHorse-Wallpaper.png"
        conf="/home/Brob/.config/hypr/Wallpapers/MonochromeHorse-Wallpaper.conf"
        ;;
    "Tokyo Night")
        img="/home/Brob/Pictures/Wallpapers/TokyoNight-Wallpaper.png"
        conf="/home/Brob/.config/hypr/Wallpapers/TokyoNight-Wallpaper.conf"
        ;;
    "GruvBox")
        img="/home/Brob/Pictures/Wallpapers/GruvBox-Wallpaper.png"
        conf="/home/Brob/.config/hypr/Wallpapers/GruvBox-Wallpaper.conf"
        ;;
    "Celeste")
        img="/home/Brob/Pictures/Wallpapers/Celeste-Wallpaper.png"
        conf="/home/Brob/.config/hypr/Wallpapers/Celeste-Wallpaper.conf"
        ;;
    *)
        exit
        ;;
esac



killall hyprpaper
hyprpaper -c "$conf" &
alacritty -e wal -i "$img" -s

killall waybar && waybar &
alacritty msg reload


