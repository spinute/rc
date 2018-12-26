alias l=ls
alias la='ls -a'
alias ll='ls -l'
alias valg='valgrind --show-leak-kinds=all --track-origins=yes --dsymutil=yes'

source ~/.git-completion.bash

export PS1="\W\$ "
export HISTSIZE=100000
export EDITOR=vim
export TERM=screen-256color

export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin

export PATH=$PATH:/usr/local/cuda/bin"
