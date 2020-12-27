#!/bin/sh
# Inspired by github.com/FedericoAntoniazzi/dotfiles/blob/master/.config/polybar/backlight.sh

increase() {
	brightnessctl s +2% > /dev/null
	return
}

decrease() {
	brightnessctl s 2%- > /dev/null
	return
}


case "$1" in 
	"increase")
		increase
		exit
		;;
	"decrease")
		decrease
		exit
		;;
esac

