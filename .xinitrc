#!/bin/sh

# Source xprofile
[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile
# Source Xresources
[ -f ~/.Xresources ] && xrdb -merge -I$HOME ~/.Xresources

exec bspwm
