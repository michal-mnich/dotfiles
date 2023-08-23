#!/usr/bin/bash
active_address=$(hyprctl activewindow | grep -m 1 Window | cut -d " " -f 2)
hyprctl setprop address:0x$active_address forcenoborder $1 lock
