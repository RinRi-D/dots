#!/bin/sh

lxpolkit &
slstatus &
fcitx5 &
dunst &
xrdb ~/.Xresources &
feh --bg-fill ~/walls/current.png &
picom &
amixer -c 1 sset 'Master' 0%
amixer -c 1 sset 'Speaker' 0%
xautolock -time 5 -locker slock.sh &
brightnessctl set 100% &
wmname LG3D &
emacs --daemon &
flameshot &
eval "$(gnome-keyring-daemon --start)" &
export SSH_AUTH_SOCK &
easyeffects --gapplication-service &
