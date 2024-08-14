#!/usr/bin/bash

active_address="0x$(hyprctl activewindow | grep -m 1 Window | cut -d " " -f 2)"
hyprctl setprop address:$active_address noborder toggle
