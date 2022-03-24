export PATH=$PATH:/home/rinri/scripts:/home/rinri/scripts/Discord:/home/rinri/.local/bin
~/scripts/automount.sh &
while true; do
    # Log stderror to a file 
    dwm 2> ~/.dwm.log
    # No error logging
    #dwm >/dev/null 2>&1
done
