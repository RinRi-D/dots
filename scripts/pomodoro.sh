#!/bin/sh

sl=25 # study session time in minutes
bl=5 # break time in minutes
bll=20 # long break time in minutes
bls=4 # number of study sessions before long break
ringtone="$HOME/Media/warcraft-soundtrack/2004 World of Warcraft/ringtone.flac"

sessions=0 # number of sessions passed
# if you kill and restart pomodoro.sh, you can specify the number of sessions passed
[ $# -gt 0 ] && sessions=$1

printf "\rStudy time! Sessions done: %d\n" "$sessions"
notify-send -i "media-playback-playing" "Study time!"
start="$(date +%s)" # start time stamp
state=0 # 0 - study, 1 - relax, 2 - long break
tl=$sl # current time limit

while :
do
    now="$(date +%s)"

    left=$((tl * 60 - (now - start)))

    printf "\033[K\r%02d:%02d" "$((left / 60))" "$((left % 60))"

    if [ $left -le 0 ]; then
        printf "\033[1A\033[K"
        if [ $state -eq 0 ]; then
            sessions=$((sessions + 1))
            if [ $((sessions % bls)) -eq 0 ]; then
                state=2
                printf "\rLong break time! Sessions done: %d\n" "$sessions"
                notify-send -i "media-playback-paused" "Long break time!"
                mpv --no-vid --no-terminal "$ringtone" &
                tl=$bll
            else
                state=1
                printf "\rBreak time! Sessions done: %d\n" "$sessions"
                notify-send -i "media-playback-paused" "Break time!"
                mpv --no-vid --no-terminal "$ringtone" &
                tl=$bl
            fi
        else
            state=0
            printf "\rStudy time! Sessions done: %d\n" "$sessions"
            notify-send -i "media-playback-playing" "Study time!"
            mpv --no-vid --no-terminal "$ringtone" &
            tl=$sl
        fi

        mpvpid=$!

        printf "%s " "Press Enter to start the timer"
        read ans
        printf "\033[1A\033[K"

        start="$(date +%s)"
        kill $mpvpid 2> /dev/null
    fi

    sleep 1
done