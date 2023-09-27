#!/bin/sh
month="$(LC_TIME=ja_JP.UTF-8 date "+%A")"
day="$(LC_TIME=ja_JP.UTF-8 date "+%x")"
time="$(date "+%H:%M")"

printf "^c#222222^^b#a77bf2^ %s ^b#9863f2^ %s ^b#884cef^ %s " "$month" "$day" "$time"
