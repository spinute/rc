if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

export PS1="\W\$ "
export HISTSIZE=10000
export EDITOR=vim

export GOROOT="$HOME/go"
export GOPATH="$HOME/packages"

export PATH="$PATH:$GOROOT/bin:/usr/local/cuda/bin"
