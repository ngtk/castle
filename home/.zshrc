# SSH
eval `ssh-agent` >/dev/null 2>&1

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

export PATH="$PATH:$HOME/.global_node_modules/node_modules/.bin"

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
export GOPATH=~/.go
export PATH=$PATH:$GOPATH/bin

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

# editor
export EDITOR=vim


function git-replace-text () {
  git grep -l $1 | xargs sed -i '' -e "s/$1/$2/g"
}

function peco-select-gitadd() {
    local SELECTED_FILE_TO_ADD="$(git status --porcelain | \
                                  peco --query "$LBUFFER" | \
                                  awk -F ' ' '{print $NF}')"
    if [ -n "$SELECTED_FILE_TO_ADD" ]; then
      BUFFER="git add $(echo "$SELECTED_FILE_TO_ADD" | tr '\n' ' ')"
      CURSOR=$#BUFFER
    fi
    zle accept-line
    # zle clear-screen
}
zle -N peco-select-gitadd
bindkey "^g^a" peco-select-gitadd

# Use misc bin
export PATH="/usr/local/misc/bin:$PATH"

# added by travis gem
[ -f /Users/ngtk/.travis/travis.sh ] && source /Users/ngtk/.travis/travis.sh


# bundlerenv
eval "$(bundlerenv init)"



# misc

function ghq-remove() {
  ghq list --full-path | peco | xargs rm -r
}

function google() {
  open "http://google.com/?q='$@'"
}

# fortune | cowsay
#  ________________________________________
# / Someday somebody has got to decide     \
# | whether the typewriter is the machine, |
# \ or the person who operates it.         /
#  ----------------------------------------
#         \   ^__^
#          \  (oo)\_______
#             (__)\       )\/\
#                 ||----w |
#                 ||     ||
#
# probability: 1/10
if [ $(jot -r 1 1 10) = "1" ]; then
  if type fortune >/dev/null 2>&1 && type cowsay >/dev/null 2>&1; then
    fortune | cowsay
  else
    echo "==== fortune | cowsay ===="
    echo "fortune or cowsay are not installed."
    echo ""
    echo "Install:"
    echo "brew install fortune cowsay"
  fi
fi

# Castle control center
if [ $(jot -r 1 1 10) = "1" ]; then
  homeshick cd castle
  if [ "$(git status --short)" != "" ]; then
    echo "[castle] Your castle is messy :("
    echo "Would you like to put the code in order now? [Y/n]"
    read line
    if [[ "$line" == Y* ]] || [[ "$line" == y* ]] || [ -z "$line" ]; then
      echo "let's cleaning!"
    else
      cd - >/dev/null 2>&1
    fi
  else
    echo "[castle] Would you like to check for updates? [Y/n]: \c"
    read line
    if [[ "$line" == Y* ]] || [[ "$line" == y* ]] || [ -z "$line" ]; then
      homeshick cd castle
      if git pull --rebase --stat origin master; then
        cd - >/dev/null 2>&1
      fi
    fi
  fi
fi
