PROMPT="%1~% ; "

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory extendedglob notify

#bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
#zstyle :compinstall filename '/home/esmth/.zshrc'
#autoload -Uz compinit
#compinit
# End of lines added by compinstall

export GPU_MAX_ALLOC_PERCENT=100
export GPU_USE_SYNC_OBJECTS=1
export PATH="/home/esmth/bin:$PATH"
export DISPLAY=:0
export CONCURRENCY_LEVEL=5

alias agi="sudo apt-get install"
alias agu="sudo apt-get update"
alias agug="sudo apt-get upgrade"
alias acs="apt-cache search"
alias agp="sudo apt-get purge"
#alias pianobar="aoss pianobar"
alias fucking="sudo"

source /home/esmth/src/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source /home/esmth/src/zsh-history-substring-search/zsh-history-substring-search.zsh
