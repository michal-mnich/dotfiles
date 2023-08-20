# Unalias
unalias run-help

# Programs
alias vim="nvim"
alias python="ipython"

# Dotflies bare git repo
alias cfg="git --git-dir=$HOME/.mycfg/ --work-tree=$HOME"

alias cfgc="cfg commit --verbose"
alias "cfgc!"="cfgc --amend"
alias cfgca="cfgc --all"
alias "cfgca!"="cfgc --all --amend"

alias cfga="cfg add"
alias cfgaa="cfg add --all"

alias cfgst="cfg status"
alias cfgp="cfg push"

# Configuration files
alias aliascfg="nvim $HOME/.config/my_aliases.zsh"
alias hyprcfg="nvim $HOME/.config/hypr/hyprland.conf"
alias swaycfg="nvim $HOME/.config/sway/config"
alias waybarcfg="nvim $HOME/.config/waybar/config"
alias nvimcfg="nvim $HOME/.config/nvim/lua/custom/init.lua"
alias kittycfg="nvim $HOME/.config/kitty/kitty.conf"

# System maintenance
alias tlupgrade="sudo tlmgr update --all"
alias rsupgrade="rustup update"
alias grubupdate="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias initramupdate="sudo mkinitcpio -P"
