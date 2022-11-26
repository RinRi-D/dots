#!/bin/sh

card=$(aplay -l | grep Analog | awk '{print $2}' | head -c-2)

if [ "$(amixer -c"$card" get "Capture" | grep -c "\[on\]")" -gt 0 ]; then
    [ $# -ge 1 ] && amixer -c"$card" set 'Capture' nocap
    [ $# -ge 1 ] && notify-send -t 700 -i "mic-off" "Microphone Muted!"
    printf ""
else
    [ $# -ge 1 ] && amixer -c"$card" set 'Capture' cap
    [ $# -ge 1 ] && notify-send -t 700 -i "mic-on" "Microphone Activated!"
    printf ""
fi
