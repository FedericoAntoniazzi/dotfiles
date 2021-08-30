#!/bin/bash

autorandr --load $(autorandr --detected)

if xrandr -q | grep 'HDMI-1 connected primary' ; then
	
	bspc monitor HDMI-1 -d 1 2 3 4 5 6 7
	bspc monitor eDP-1 -d 8 9 0

else

	bspc monitor eDP-1 -d 1 2 3 4 5 6 7 8 9 0

fi
