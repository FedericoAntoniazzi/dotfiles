#!/bin/sh
xrandr

# Source xprofile
[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile
# Source Xresources
[ -f ~/.Xresources ] && xrdb -merge -I$HOME ~/.Xresources
xsetroot -cursor_name left_ptr &

exec bspwm
