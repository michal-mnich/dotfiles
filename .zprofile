# COMMANDS RUN AT LOGIN SHELL STARTUP

# TexLive configuration
export MANPATH="$MANPATH:/usr/local/texlive/2023/texmf-dist/doc/man"
export INFOPATH="$INFOPATH:/usr/local/texlive/2023/texmf-dist/doc/info"
export PATH="$PATH:/usr/local/texlive/2023/bin/x86_64-linux"

# Start ssh-agent
[[ -z "$SSH_AUTH_SOCK" ]] && eval $(ssh-agent) > /dev/null

# If running from tty1, start Hyprland
[[ "$(tty)" = "/dev/tty1" ]] && exec Hyprland &> "$HOME/.hypr_log"

# If running from tty2, start Sway
[[ "$(tty)" = "/dev/tty2" ]] && exec sway &> "$HOME/.sway_log"
