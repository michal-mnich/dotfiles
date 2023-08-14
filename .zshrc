# Path to the oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Underscores and hyphens are interchangeable.
HYPHEN_INSENSITIVE="true"

# Update oh-my-zsh automatically without asking.
zstyle ':omz:update' mode auto

# Enable command auto-correction.
ENABLE_CORRECTION="true"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="false"

# Which plugins would you like to load?
plugins=(git aliases archlinux)

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# export MANPATH="/usr/local/man:$MANPATH"

# My aliases
alias vim="nvim"
alias python="ipython"
alias agrep="alias | grep"

alias cfg="git --git-dir=$HOME/.mycfg/ --work-tree=$HOME"

alias cfgc="cfg commit --verbose"
alias "cfgc!"="cfgc --amend"
alias cfgca="cfgc --all"
alias "cfgca!"="cfgc --all --amend"

alias cfga="cfg add"
alias cfgaa="cfg add -all"

alias cfgst="cfg status"
alias cfgp="cfg push"

alias hyprcfg="nvim $HOME/.config/hypr/hyprland.conf"
alias swaycfg="nvim $HOME/.config/sway/config"
alias waybarcfg="cd $HOME/.config/waybar"
alias nvimcfg="nvim $HOME/.config/nvim/init.lua"
alias kittycfg="nvim $HOME/.config/kitty/kitty.conf"

alias tlupgrade="sudo tlmgr update --all"
alias rsupgrade="rustup update"
alias grubupdate="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias initramupdate="sudo mkinitcpio -P"
