#!/bin/sh




dunst &
nitrogen --restore &
setxkbmap 'fi'

~/.dwm/status.sh &

exec dwm
