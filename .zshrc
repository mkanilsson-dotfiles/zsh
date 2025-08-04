export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="dpoggi"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Enviorment variables
export EDITOR="nvim"
export VISUAL="nvim" 
# export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export GOPATH="$HOME/Documents/dev/go"

# Quality of life
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias rm="rm -i"                          # Avoid accedental removes
alias free='free -m'                      # show sizes in MB
alias more=less
alias sdn="poweroff"                      # sdn = "sudo shutdown now"
alias ls="exa --color=always --git"
alias tb="thunderbird"

# Git
alias ga="git add"
alias gap="git add -p"
alias gpull="git pull"
alias gc="git commit -m"
alias gpush="git push"

# Python
alias python="python3"
alias pip="pip3"

# Laravel
alias artisan="php artisan"
alias tinker="php artisan tinker"
alias migrate="php artisan migrate"

# AdonisJS
alias ace="node ace"
alias arepl="node ace repl"

# DOAS IS BETTER THAN SUDO!!!! >:(
alias doas="doas --"
alias sudo="doas"

# Neovim > vim
alias vim="nvim"
alias v="nvim"

# I'm too used to using :q to quit stuff
alias :q="exit"

# Extract different archives
# Shamelessly stolen from either Manjaro i3 edition default .bashrc or Ubuntu 20.04 LTS default .bashrc
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# Paths
export PATH="$PATH:$HOME/Android/Sdk/emulator"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/opt/cross/bin"
export PATH="$PATH:/var/lib/snapd/snap/bin"
export PATH="$PATH:$HOME/.emacs.d/bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:/usr/lib/node_modules/npm"
export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:$HOME/.config/emacs/doom/bin"
export PATH="$PATH:$HOME/.dotnet/tools"
export PATH="$PATH:$HOME/Scripts"
export PATH="$PATH:$HOME/opt/rider/bin/"

export DOOMDIR="$HOME/.doom.d"


# Init ocaml opam environment
[[ ! -r $HOME/.opam/opam-init/init.zsh ]] || source $HOME/.opam/opam-init/init.zsh >/dev/null 2>/dev/null

# Kill current foreground process with Ctrl+K
kill-foreground-process() {
  kill -9 %%
  zle reset-prompt
}
zle -N kill-foreground-process
bindkey '^K' kill-foreground-process

# fnm stuff
export PATH="/run/user/1000/fnm_multishells/11299_1748845994683/bin":$PATH
export FNM_MULTISHELL_PATH="/run/user/1000/fnm_multishells/11299_1748845994683"
export FNM_VERSION_FILE_STRATEGY="local"
export FNM_DIR="/home/marcus/.local/share/fnm"
export FNM_LOGLEVEL="info"
export FNM_NODE_DIST_MIRROR="https://nodejs.org/dist"
export FNM_COREPACK_ENABLED="false"
export FNM_RESOLVE_ENGINES="true"
export FNM_ARCH="x64"
