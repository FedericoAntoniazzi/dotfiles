#!/bin/sh
xrandr

# Source xprofile
[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile
# Source Xresources
[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources

exec bspwm
