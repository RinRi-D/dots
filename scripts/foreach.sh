#!/bin/bash

while read -u 10 p; do
    echo "Copying $p..."
    cp "$p" send
done 10<$1