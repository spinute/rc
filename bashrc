alias l=ls
alias la='ls -a'
alias ll='ls -l'
alias v=vim
alias g=git

source ~/.git-completion.bash

export PS1="\W\$ "
export HISTSIZE=100000
export EDITOR=vim
export TERM=screen-256color

export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:$HOME/repos/flutter/bin

eval "$(direnv hook bash)"
