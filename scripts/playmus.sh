#!/bin/sh

artist="$(playerctl metadata artist)"
title="$(playerctl metadata title)"

if [ $# -ge 1 ]; then
    if [ "$1" -eq 1 ]; then
        playerctl play-pause
    else
        [ "$1" -eq 2 ] && playerctl next
        [ "$1" -eq 3 ] && playerctl previous
        artist="$(playerctl metadata artist)"
        title="$(playerctl metadata title)"
        notify-send -i "media-playback-playing" "Playing now..." "$artist - $title"
    fi
else
    notify-send -i "media-playback-playing" "Playing now..." "$artist - $title"
fi

