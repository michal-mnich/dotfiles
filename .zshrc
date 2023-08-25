# My aliases
source $HOME/.my_aliases

# Path to the oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Update oh-my-zsh automatically without asking.
zstyle ':omz:update' mode auto

# Check for updates every day
zstyle ':omz:update' frequency 1

# Display an icon while waiting for a tab completion.
COMPLETION_WAITING_DOTS="   "

# History timestamps
HIST_STAMPS="%d.%m.%Y %H:%M:%S"

# Automatic alias finder
ZSH_ALIAS_FINDER_AUTOMATIC=true

# Oh-My-Zsh plugins
plugins=(
    git
    aliases
    alias-finder
    archlinux
    copyfile
    rand-quote
    extract
    poetry
    rust
)
source $ZSH/oh-my-zsh.sh

# Autosuggestions plugin (inline gray text)
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
bindkey '^ ' autosuggest-accept

# Syntax highlighting plugin (must be sourced last!!!)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
