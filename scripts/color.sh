echo -en "\033[31m"  ## red
eval $* | while read line; do
    echo -en "\033[36m"  ## blue
    echo $line
    echo -en "\033[31m"  ## red
done
echo -en "\033[0m"  ## reset color