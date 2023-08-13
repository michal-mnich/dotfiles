#!/usr/bin/bash
toggle=$(hyprctl monitors | grep dpmsStatus | cut -d " " -f 2)
if [[ $toggle == "0" ]]; then
  hyprctl dispatch dpms on
elif [[ $toggle == "1" ]]; then
  hyprctl dispatch dpms off
fi
