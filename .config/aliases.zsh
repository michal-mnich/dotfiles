# Unalias
unalias run-help

# Programs
# alias python="ipython"
alias rust-docs="rustup doc"
alias python-docs="xdg-open /usr/share/doc/python/html/index.html"
alias java-docs="xdg-open /usr/share/doc/java-openjdk/index.html"
alias java17-docs="xdg-open /usr/share/doc/java17-openjdk/index.html"
alias linux-docs="xdg-open /usr/share/doc/linux/index.html"
alias cpp-docs="xdg-open /usr/share/doc/cppreference/en/index.html"
alias psql-docs="xdg-open /usr/share/doc/postgresql/html/index.html"
alias cormen="xdg-open ~/calibre/nauka/Thomas\ H.\ Cormen/Introduction\ to\ Algorithms,\ 4th\ Edition\ \(111\)/Introduction\ to\ Algorithms,\ 4th\ Edition\ -\ Thomas\ H.\ Cormen.pdf"

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
alias cfgrm="cfg rm --cached"

# Configuration files
alias zshcfg="nvim ~/{.zshrc,.zprofile,.zshenv} ~/.config/{aliases.zsh,functions.zsh}"
alias hyprcfg="nvim ~/.config/hypr/{hyprland.conf,binds.conf}"
alias swaycfg="nvim ~/.config/sway/config"
alias waybarcfg="nvim ~/.config/waybar/{config,style.css}"
alias nvimcfg="nvim ~/.config/nvim/lua/custom/init.lua"
alias kittycfg="nvim ~/.config/kitty/kitty.conf"

# System maintenance
alias rsupgrade="rustup update"
alias grubupdate="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias initramupdate="sudo mkinitcpio -P"

# Misc
alias clr="clear"
alias l="ls -lAh --color=tty --group-directories-first --time-style=+\"%d.%m.%Y %H:%M:%S\" --no-group"
alias yaclean="yay -Sc --noconfirm"
