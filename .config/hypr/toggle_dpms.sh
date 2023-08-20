#!/usr/bin/bash
toggle=$(hyprctl monitors | grep -m 1 dpmsStatus | cut -d " " -f 2)
if [[ $toggle == "0" ]]; then
  hyprctl dispatch dpms on eDP-1
elif [[ $toggle == "1" ]]; then
  hyprctl dispatch dpms off eDP-1
fi
