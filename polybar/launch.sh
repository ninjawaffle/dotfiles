#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Launch polybar
polybar example 2>&1 | tee -a /tmp/polybar.log & disown
echo "polybar launched"
