#!/bin/sh

if [ -x "$HOME/.screenlayout.sh" ]; then
  ~/.screenlayout/default.sh
fi

WALLPAPER='$HOME/wallpapers/black_orange_arch.jpg'

picom & 
dunst &
# nitrogen --restore &
feh --bg-scale $WALLPAPER &
setxkbmap 'fi'
flameshot &

~/.dwm/status.sh &

exec dwm
