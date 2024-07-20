#!/usr/bin/env bash
polybar-msg cmd quit
polybar bar 2>&1 | tee -a /tmp/polybar1.log & disown
feh --bg-scale --zoom fill ~/Backgrounds/wallpaper.png
