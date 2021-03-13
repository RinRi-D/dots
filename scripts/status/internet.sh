#!/bin/sh

case $BUTTON in
	1) st -e nmtui;;
	3) notify-send "Internet module" "\- Click to connect
n: no wifi connection
w: wifi connection with quality
n: no ethernet
e: ethernet working
🔒: vpn is active
" ;;
	6) st -e nvim "$0" ;;
esac

case "$(cat /sys/class/net/w*/operstate 2>/dev/null)" in
	down) wifiicon="" ;;
	up) wifiicon="$(awk '/^\s*w/ { print "", int($3 * 100 / 70) "% " }' /proc/net/wireless)" ;;
esac

printf "%s%s%s\n" "$wifiicon" "$(sed "s/down//;s/up//" /sys/class/net/e*/operstate 2>/dev/null)" "$(sed "s/.*/🔒/" /sys/class/net/tun*/operstate 2>/dev/null)"
