#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -hl'
alias la='ls -AFhl'

alias diskspace="du -hS | sort -nr"

PS1='\u@\h[\w]> '
# PS1='[\u@\h \W]\$ '
