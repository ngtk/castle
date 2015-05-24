# Zsh path
export ZSH=$HOME/.oh-my-zsh
export TERM=xterm-256color

# Zsh theme
# See: ~/.oh-my-zsh/themes/
ZSH_THEME="miloshadzic"

# edit rc
alias vizsh='vi ~/.zshrc && source ~/.zshrc'
alias vizshalias='vi ~/.alias && source ~/.alias'
alias vimrc='vi ~/.vimrc'

# homeshick
source $HOME/.homesick/repos/homeshick/homeshick.sh
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)


# preload /usr/local/bin for oh-my-zsh
# see: https://github.com/robbyrussell/oh-my-zsh/issues/2583
export PATH="/usr/local/bin:$PATH"

# see: ~/.oh-my-zsh/plugins/*
plugins=(git osx brew bundle ruby rails tmux)

source $ZSH/oh-my-zsh.sh

# Alias
source ~/.alias

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Ruby: rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
export RBENV_ROOT=/usr/local/var/rbenv
eval "$(rbenv init - zsh)"

# Python: pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Node: nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# Go
export GOPATH=/usr/local/opt/go/libexec/bin
export PATH=$PATH:$GOPATH

### Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# github <3<3
function git(){ hub "$@" }

# ls colors
alias ls='gls --color=auto'
eval $(gdircolors ~/.dircolors)

if [ -n "$LS_COLORS"  ]; then
  zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
fi

function peco-src () {
  local selected_dir=$(ghq list -p | peco --query "$LBUFFER")
  if [ -n "$selected_dir" ]; then
    BUFFER="cd ${selected_dir}"
    zle accept-line
  fi
  zle clear-screen
}
zle -N peco-src
bindkey '^]' peco-src
