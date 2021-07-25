#!/bin/sh

chosen=$(echo "Shutdown\nReboot\nSuspend\nHibernate" | dmenu -i -p "Power Management")

case "$chosen" in
    Shutdown) sudo poweroff;;
    Reboot) sudo reboot;;
    Suspend) slock & systemctl suspend;;
    Hibernate) systemctl hibernate;;
esac
