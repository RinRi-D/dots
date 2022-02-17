#!/bin/sh

lxpolkit &
slstatus &
dunst &
setxkbmap -layout us,ru -option grp:alt_shift_toggle &
xbanish &
xrdb ~/.Xresources &
wmname LG3D &
feh --bg-fill ~/walls/current.png &
picom --experimental-backends &
xautolock -time 5 -locker slock.sh &
brightnessctl set 100% &
wmname LG3D &
emacs --daemon &
eval $(gnome-keyring-daemon --start) &
export SSH_AUTH_SOCK &
#killall pulseaudio
~/scripts/start-jack.sh &
cadence &
mount ~/nextcloud &
