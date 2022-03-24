#!/bin/sh

printf "^c#222222^"

bat=$(cat /sys/class/power_supply/BAT1/capacity)

if [ $bat -le 25 ]; then
    printf "^b#ffa3a3^ "
elif [ $bat -le 50 ]; then
    printf "^b#fbcea0^ "
elif [ $bat -le 75 ]; then
    printf "^b#c2d79e^ "
else
    printf "^b#89e19c^ "
fi
    