scrot "%y-%m-%d-%s_Screenshot.png" && \
mpv ~/Desktop/Scripts/screenshot_sound.mp3 & >> /dev/null/
notify-send -u "low" "Screenshot Saved" -i /usr/share/icons/Adwaita/64x64/devices/camera-photo-symbolic.symbolic.png
mv ~/*Screenshot* ~/Pictures/Screenshots/
