#!/usr/bin/bash
activePID=$(hyprctl activewindow | grep pid | cut -d " " -f 2)
hyprctl setprop pid:$activePID forcenoborder $1 lock
