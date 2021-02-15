#!/bin/sh



picom & 
dunst &
nitrogen --restore &
setxkbmap 'fi'

~/.dwm/status.sh &

exec dwm
