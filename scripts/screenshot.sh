#!/bin/sh

if [ $# -eq 0 ]
then
    magick import -window root ~/Screenshots/"$(date +%Y.%m.%d-%T)".jpg
else
magick import temp.jpg
xclip -selection clipboard -t image/png temp.jpg
rm temp.png
fi