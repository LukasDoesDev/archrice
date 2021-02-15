#!/bin/sh



picom & 
dunst &
# nitrogen --restore &
feh --bg-scale ~/wallpapers/black_orange_arch.jpg &
setxkbmap 'fi'

~/.dwm/status.sh &

exec dwm
