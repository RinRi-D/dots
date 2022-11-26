#!/bin/sh

#Detect the name of the display in use
display=":$(ls /tmp/.X11-unix/* | sed 's#/tmp/.X11-unix/X##' | head -n 1)"

#Detect the user using such display
user="$(who | grep "tty1" | awk '{print $1}' | head -n 1)"

#Detect the id of the user
uid="$(id -u $user)"

pacman -Sy
sudo -u $user DISPLAY=$display DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/$uid/bus notify-send -i "view-refresh" "Packages to update: $(pacman -Qqu | wc -l)"