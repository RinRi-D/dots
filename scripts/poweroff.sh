chosen=$(echo -e "Shutdown\nReboot\nSuspend\nHibernate" | dmenu -i -p "Power Management")

case "$chosen" in
    Shutdown) sudo poweroff;;
    Reboot) sudo reboot;;
    Suspend) sudo suspend;;
    Hibernate) systemctl hibernate;;
esac
