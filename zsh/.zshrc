# Path to your oh-my-zsh configuration.
ZSH=$HOME/repositories/configs/zsh/oh-my-zsh.git

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(tmux)

source $ZSH/oh-my-zsh.sh

# brew nvm
export NVM_DIR="$HOME/.nvm"
  . "$(brew --prefix nvm)/nvm.sh"

# utils
alias dualscreen=/home/andreass/util/dualscreen
alias vgdev-mount=/home/andreass/util/vgdev01sshfs
alias vgdev-xdebug=/home/andreass/util/vgdev01xdebug
alias tmux=tmux -2 -u
alias docker-rm-dangling='docker rmi $(docker images -f "dangling=true" -q)'

# mac is weird
alias chromium='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'

# such doge
alias such=git
alias very=git
alias wow='git status'
alias tmux='tmux -2 -u'
alias mount-vgdev='sshfs -p 22 andreass@vg-dev-01:/home/andreass ~/Volumes/vgdev -oauto_cache,reconnect,defer_permissions,noappledouble,negative_vncache,volname=vgdev,umask=0002'
alias docker-php7-cli='docker run -i -t -v $(pwd):/src/app php:7.0.6-cli /bin/bash'

# vulture stuffs
export HOST_ROC_PORT=3001
export ROC_PORT=3001
export HOST_APACHE_PORT=3000
export APACHE_PORT=3000
export VULTURE_HOST=pro

# vi mode
bindkey -v

bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

# vi mode indiciator
precmd() { RPROMPT="" }
function zle-line-init zle-keymap-select {
   VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
   RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
   zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

# reduce key timeout
export KEYTIMEOUT=1

# umask
umask 0002
