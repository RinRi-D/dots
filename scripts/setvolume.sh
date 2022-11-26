#!/bin/sh

# Internal speaker

# Microphone
amixer -c 1 sset 'Capture' 100%
amixer -c 1 sset 'Digital' 100%
amixer -c 1 sset 'Internal Mic Boost' 0%
amixer -c 1 sset 'Headset Mic Boost' 0%