#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export TERM="rxvt-256color"

export EDITOR="vim"
export PS1='\u@\h[\w]> '

# ls aliases
alias ls='ls --color=auto'
alias ll='ls -hl'
alias la='ls -AFhl'

alias rm='rm -i'

complete -cf sudo

# color all grep output
export GREP_OPTIONS='--color=auto'

# disk management aliases
alias diskspace="du -hS | sort -nr"

# power management aliases
alias i3lock='i3lock -i ~/.wallpaper.png'
alias shutdown='shutdown now'
alias suspend='i3lock && systemctl suspend'
alias lock='i3lock'

# coloring for less
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# dynamic X window titles
export PROMPT_COMMAND=""
trap 'echo -ne "\033]0;${USER}@${HOSTNAME}[${PWD}]> ${BASH_COMMAND}\007"' DEBUG
