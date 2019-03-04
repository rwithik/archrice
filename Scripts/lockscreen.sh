#!/bin/bash

insidecolor=ffffff40
ringcolor=ffffffff
keyhlcolor=d23c3dff
bshlcolor=d23c3dff
separatorcolor=00000000
insidevercolor=00000000
insidewrongcolor=d23c3dff
ringvercolor=ffffffff
ringwrongcolor=ffffffff
verifcolor=ffffffff
timecolor=ffffffff
datecolor=ffffffff
loginbox=00000066
font="sans-serif"
locktext='Type password to unlock...'

scrot /tmp/screen.png
convert /tmp/screen.png -scale 20% -scale 500% -fill "#$loginbox" -draw "rectangle 30,738 330,658 " /tmp/screen.png
[[ -f $1 ]] && convert /tmp/screen.png $1 -gravity center -composite -matte /tmp/screen.png
# dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Stop

i3lock \
		-t -i /tmp/screen.png \
		--timepos='x+110:h-70' \
		--datepos='x+43:h-45' \
		--clock --date-align 1 --datestr "$locktext" \
		--insidecolor=$insidecolor --ringcolor=$ringcolor --line-uses-inside \
		--keyhlcolor=$keyhlcolor --bshlcolor=$bshlcolor --separatorcolor=$separatorcolor \
		--insidevercolor=$insidevercolor --insidewrongcolor=$insidewrongcolor \
		--ringvercolor=$ringvercolor --ringwrongcolor=$ringwrongcolor --indpos='x+280:h-70' \
		--radius=20 --ring-width=4 --veriftext='' --wrongtext='' \
		--verifcolor="$verifcolor" --timecolor="$timecolor" --datecolor="$datecolor" \
		--time-font="$font" --date-font="$font" --layout-font="$font" --verif-font="$font" --wrong-font="$font" \
		--noinputtext='' --force-clock $lockargs

# i3lock -n -i /tmp/screen.png
# blurlock
notify-send "Welcome back, ${USER}!"
rm /tmp/screen.png
