#!/bin/sh

notify-send "$(printf "`cal -m`\n`cal -m +1month`")"