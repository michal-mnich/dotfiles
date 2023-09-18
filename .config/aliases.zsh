# Unalias
unalias run-help

# Programs
# alias python="ipython"
alias rust-book="rustup docs --book"

# Dotflies bare git repo
alias cfg="git --git-dir=$HOME/repos/dotfiles --work-tree=$HOME"

alias cfgc="cfg commit --verbose"
alias "cfgc!"="cfgc --amend"
alias cfgca="cfgc --all"
alias "cfgca!"="cfgc --all --amend"

alias cfga="cfg add"
alias cfgaa="cfg add --all"

alias cfgst="cfg status"
alias cfgp="cfg push"

# Configuration files
alias zshcfg="nvim ~/{.zshrc,.zprofile,.zshenv} ~/.config/{aliases.zsh,functions.zsh}"
alias hyprcfg="nvim ~/.config/hypr/{hyprland.conf,binds.conf}"
alias swaycfg="nvim ~/.config/sway/config"
alias waybarcfg="nvim ~/.config/waybar/{config,style.css}"
alias nvimcfg="nvim ~/.config/nvim/lua/custom/init.lua"
alias kittycfg="nvim ~/.config/kitty/kitty.conf"

# System maintenance
alias tlupgrade="sudo tlmgr update --self --all"
alias rsupgrade="rustup update"
alias grubupdate="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias initramupdate="sudo mkinitcpio -P"

# Misc
alias clr="clear"
alias l="ls -lAh --color=tty --group-directories-first --time-style=+\"%d.%m.%Y %H:%M:%S\" --no-group"
