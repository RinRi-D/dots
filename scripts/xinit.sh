#!/bin/sh

slstatus &
dunst &
setxkbmap -layout us,ru -option grp:alt_shift_toggle &
xbanish &
xrdb ~/.Xresources &
feh --bg-scale ~/walls/collections/wallhaven-wyrqg7.png &
picom --experimental-backends &
pulseaudio -D &
xautolock -time 5 -locker slock &
cadence &
brightnessctl set 100%
