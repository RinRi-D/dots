i=1
mkdir vid
for filename in *.mkv
do
    if [ $i -lt 10 ]
    then
        mv "$filename" vid/0$i.mkv
    else
        mv "$filename" vid/$i.mkv
    fi
    i=$(( i+1 ))
done
