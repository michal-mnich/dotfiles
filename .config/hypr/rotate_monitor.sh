#!/bin/bash
transform=$(hyprctl monitors | grep HDMI-A-1 -A 11 | grep transform | cut -d " " -f 2)
if [[ $transform == "0" ]]; then
    hyprctl keyword monitor HDMI-A-1, transform, 1
    hyprctl keyword monitor eDP-1, preferred, 0x2560, auto
else
    hyprctl keyword monitor HDMI-A-1, transform, 0
    hyprctl keyword monitor eDP-1, preferred, 0x1440, auto
fi
