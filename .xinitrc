#!/bin/sh

# If file exists and execute permission is granted
if [ -x "$HOME/.screenlayout.sh" ]; then
    ~/.screenlayout.sh
fi


WALLPAPER='$HOME/wallpapers/black_orange_arch.jpg'

picom & 
dunst &

if [ -r "$WALLPAPER" ]; then
    feh --bg-scale $WALLPAPER &
fi

setxkbmap 'fi'
flameshot &

~/.dwm/status.sh &

exec dwm
