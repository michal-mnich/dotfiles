# COMMANDS RUN AT LOGIN SHELL STARTUP

# Start ssh-agent
[[ -z "$SSH_AUTH_SOCK" ]] && eval $(ssh-agent) > /dev/null

# If running from tty1, start Hyprland
[[ "$(tty)" = "/dev/tty1" ]] && exec Hyprland &> "$HOME/.hypr_log"

# If running from tty2, start Sway
[[ "$(tty)" = "/dev/tty2" ]] && exec sway &> "$HOME/.sway_log"

# Created by `pipx` on 2023-11-04 20:44:28
# export PATH="$PATH:/home/michal/.local/bin"
