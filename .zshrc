PROMPT="%1~% ; "

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory extendedglob notify

export GPU_MAX_ALLOC_PERCENT=100
export GPU_USE_SYNC_OBJECTS=1
export PATH="/home/esmth/bin:$PATH"
export DISPLAY=:0
export CONCURRENCY_LEVEL=8

alias agi="sudo apt-get install"
alias agu="sudo apt-get update"
alias agug="sudo apt-get upgrade"
alias acs="apt-cache search"
alias agp="sudo apt-get purge"
alias fucking="sudo"
alias ls="ls --color=auto"
alias sf="screenfetch"

source /home/esmth/src/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
