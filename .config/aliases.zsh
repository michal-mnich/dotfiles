# Unalias
unalias run-help

# Programs
alias python="ipython"
alias rust-book="rustup docs --book"

# Dotflies bare git repo
alias cfg="git --git-dir=$HOME/.mycfg --work-tree=$HOME"

alias cfgc="cfg commit --verbose"
alias "cfgc!"="cfgc --amend"
alias cfgca="cfgc --all"
alias "cfgca!"="cfgc --all --amend"

alias cfga="cfg add"
alias cfgaa="cfg add --all"

alias cfgst="cfg status"
alias cfgp="cfg push"

# Configuration files
alias zshcfg="cd && nvim ~/.zshrc ~/.zprofile ~/.zshenv ~/.config/aliases.zsh"
alias hyprcfg="cd ~/.config/hypr && nvim hyprland.conf binds.conf"
alias swaycfg="cd ~/.config/sway && nvim config"
alias waybarcfg="cd ~/.config/waybar && nvim config style.css"
alias nvimcfg="cd ~/.config/nvim/lua/custom && nvim init.lua"
alias kittycfg="cd ~/.config/kitty && nvim kitty.conf"

# System maintenance
alias tlupgrade="sudo tlmgr update --all"
alias rsupgrade="rustup update"
alias grubupdate="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias initramupdate="sudo mkinitcpio -P"
