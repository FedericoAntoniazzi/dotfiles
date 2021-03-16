#!/bin/bash

if xrandr -q | grep 'HDMI-1 connected' ; then

	xrandr --output eDP-1 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal
	
	bspc monitor HDMI-1 -d 1 2 3 4 5 6 7
	bspc monitor eDP-1 -d 8 9 0

else

	bspc monitor eDP-1 -d 1 2 3 4 5 6 7 8 9 0

fi
