#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR="vim"
export PS1='\u@\h[\w]> '

# ls aliases
alias ls='ls --color=auto'
alias ll='ls -hl'
alias la='ls -AFhl'

# disk management aliases
alias diskspace="du -hS | sort -nr"


# power management aliases
alias i3lock='i3lock -i ~/.wallpaper.png'
alias shutdown='shutdown now'
alias suspend='i3lock && systemctl suspend'
alias lock='i3lock'

# dynamic window titles
function settitle() {
    export PREV_COMMAND=${@}
    echo -ne "\033]0;${PREV_COMMAND}\007"
}
export PROMPT_COMMAND="${PREV_COMMAND}"
trap 'settitle "$BASH_COMMAND"' DEBUG
# export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'
