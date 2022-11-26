#!/bin/sh

if [ $# -eq 0 ]
then
    flameshot screen -n $(($(xrandr | grep -c " connected") - 1)) -c -p ~/Screenshots/"$(date +%Y.%m.%d-%T)".jpg
else
    flameshot gui -c
fi
