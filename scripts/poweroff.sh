#!/bin/sh

chosen=$(echo "Shutdown\nReboot\nSuspend\nHibernate" | dmenu -i -p "Power Management")

case "$chosen" in
    Shutdown) killall picom; systemctl poweroff;;
    Reboot) killall picom; systemctl reboot;;
    Suspend) slock & systemctl suspend;;
    Hibernate) systemctl hibernate;;
esac
