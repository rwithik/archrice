#! /bin/bash

wal -i ~/wallpapers/Landscapes >> /dev/null

source ~/.cache/wal/colors.sh

betterlockscreen -u $wallpaper >> /dev/null

notify-send "Wallpaper Changed!"
