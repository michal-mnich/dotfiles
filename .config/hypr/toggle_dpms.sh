#!/usr/bin/bash
toggle=$(hyprctl monitors | grep eDP-1 -A 11 | grep dpmsStatus | cut -d " " -f 2)
if [[ $toggle == "0" ]]; then
  hyprctl dispatch dpms on eDP-1
elif [[ $toggle == "1" ]]; then
  hyprctl dispatch dpms off eDP-1
fi
