#!/bin/bash

status=$(cat /sys/class/power_supply/BAT0/status)

percentage=$(cat /sys/class/power_supply/BAT0/capacity)

hex_color="#FC3876"  

if [ "$status" = "Charging" ]; then
    symbol="+"
elif [ "$status" = "Discharging" ]; then
    symbol="-"
else
    symbol=""
fi

output="BAT: ${percentage}% $symbol"

echo "%{F$hex_color}$output%{F-}"
