#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
source ~/.git-prompt.sh

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUPSTREAM="verbose"
PS1="$RED\$(date +%H:%M) \w$YELLOW\$(__git_ps1) $GREEN\$ \[\e[0m\]"

#PS1='\[\033[0;33m\]\u\[\033[0m\]@\[\033[0;32m\]\h\[\033[0m\]:\[\033[0;34m\]\w\[\033[0m\]\$ '

export PATH=$PATH:$HOME/.gem/ruby/1.9.1/bin/
umask 0002

