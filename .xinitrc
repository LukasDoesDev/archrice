#!/bin/sh



picom & 
dunst &
# nitrogen --restore &
feh --bg-scale ~/wallpapers/black_orange_arch.jpg &
setxkbmap 'fi'
flameshot &

~/.dwm/status.sh &

~/.screenlayout/default.sh
exec dwm
