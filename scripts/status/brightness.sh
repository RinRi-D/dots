#!/bin/sh

echo "$(brightnessctl g)/$(brightnessctl m)*100" | bc -l | awk '{printf("%d\n",$1 + 0.5)}'