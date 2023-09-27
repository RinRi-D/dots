#!/bin/sh

notify-send "$(printf "`cal -m`\n`cal -m $(date +%B --date="$(date +%Y-%m-15) next month")`")"
