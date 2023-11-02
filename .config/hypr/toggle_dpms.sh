#!/usr/bin/bash
toggle=$(hyprctl monitors | grep $1 -A 11 | grep dpmsStatus | cut -d " " -f 2)
if [[ $toggle == "0" ]]; then
  hyprctl dispatch dpms on $1
elif [[ $toggle == "1" ]]; then
  hyprctl dispatch dpms off $1
fi
