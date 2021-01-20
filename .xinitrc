export VDPAU_DRIVER=va_gl
xrdb -I$HOME ~/.Xresources
xset b off
setxkbmap it
numlockx &
exec bspwm
