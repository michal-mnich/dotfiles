# Unalias
unalias run-help

# Programs
alias python="ipython"
alias rust-book="rustup docs --book"

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
alias aliascfg="nvim $HOME/.config/aliases.zsh"
alias hyprcfg="cd $HOME/.config/hypr"
alias swaycfg="cd $HOME/.config/sway"
alias waybarcfg="cd $HOME/.config/waybar"
alias nvimcfg="cd $HOME/.config/nvim/lua/custom"
alias kittycfg="cd $HOME/.config/kitty"

# System maintenance
alias tlupgrade="sudo tlmgr update --all"
alias rsupgrade="rustup update"
alias grubupdate="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias initramupdate="sudo mkinitcpio -P"
