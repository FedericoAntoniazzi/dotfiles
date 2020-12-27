#!/bin/bash
# Hide polybar when a window is fullscreen

is_fullscreen=$(bspc query -N -n .focused.fullscreen -d focused)

if [ -z "$is_fullscreen" ]; then
	polybar-msg cmd hide
	bspc node focused.tiled -t fullscreen
else
	bspc node focused.fullscreen -t tiled
	polybar-msg cmd show
fi

