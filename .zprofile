# COMMANDS RUN AT LOGIN SHELL STARTUP

# Start ssh-agent
eval $(ssh-agent) > /dev/null

# If running from tty1, start Hyprland
[ "$(tty)" = "/dev/tty1" ] && exec Hyprland &> /dev/null

# If running from tty2, start Sway
[ "$(tty)" = "/dev/tty2" ] && exec sway &> /dev/null
