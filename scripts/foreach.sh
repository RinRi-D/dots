#!/bin/bash
File=$1
Lines=$(cat $File)
for Line in $Lines
do
    $2 "$Line"
done