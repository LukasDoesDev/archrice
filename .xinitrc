#!/bin/sh


~/.screenlayout/default.sh

picom & 
dunst &
# nitrogen --restore &
feh --bg-scale ~/wallpapers/black_orange_arch.jpg &
setxkbmap 'fi'
flameshot &

~/.dwm/status.sh &

exec dwm
