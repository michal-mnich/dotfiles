#!/usr/bin/bash
active_address="0x$(hyprctl activewindow | grep -m 1 Window | cut -d " " -f 2)"
tmp=".forcenoborder_$active_address"

if [[ -e "$tmp" ]]; then
    rm -f "$tmp"
    hyprctl setprop address:$active_address forcenoborder 0 lock
else
    touch "$tmp"
    hyprctl setprop address:$active_address forcenoborder 1 lock
fi
