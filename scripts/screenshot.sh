#!/bin/sh

if [ $# -eq 0 ]
then
    magick import ~/Screenshots/$(date +%e.%m.%y-%T).png
else
magick import temp.png
xclip -selection clipboard -t image/png temp.png
rm temp.png
fi