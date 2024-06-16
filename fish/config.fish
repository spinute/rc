alias l=ls
alias la='ls -a'
alias ll='ls -l'

if status is-interactive
    eval (/opt/homebrew/bin/brew shellenv)
end

direnv hook fish | source
source (rbenv init - | psub)
source (nodenv init - | source)

set -x HISTSIZE 100000
set -x GOPATH $HOME/go
set -x PATH $PATH $GOROOT/bin
set -x PATH "$GOPATH/bin:$PATH"
set -x PATH $PATH $HOME/.cargo/bin
set -x PATH $PATH $HOME/repos/flutter/bin
set -x PATH $HOME/.ndenv/bin $PATH
set -x PATH (brew --prefix openssl@1.1)/bin $PATH
set -x PATH (brew --prefix imagemagick@6)/bin $PATH
set -x PATH (brew --prefix mysql@5.7)/bin $PATH
set -x PATH $PATH $ANDROID_HOME/tools
set -x PATH $PATH $ANDROID_HOME/tools/bin
set -x PATH $PATH $ANDROID_HOME/platform-tools
set -x FZF_LEGACY_KEYBINDINGS 0

set -x LDFLAGS -L(brew --prefix mysql@5.7)/lib:/usr/local/opt/openssl/lib
set -x CPPFLAGS -I(brew --prefix mysql@5.7)/include:(brew --prefix openssl)/include
set -x ANDROID_HOME $HOME/Library/Android/sdk
set -x RUBY_CONFIGURE_OPTS --with-openssl-dir=(brew --prefix openssl@1.1)
set -x PATH (brew --prefix openssl@1.1)/bin:$PATH
set -x LSCOLORS gxfxbEaEBxxEhEhBaDaCaD

set -x EDITOR vim
set -x EDITOR vim
set -x EDITOR vim
set -x EDITOR vim
set -x EDITOR vim
set -x EDITOR vim
set -x EDITOR vim
set -x EDITOR vim
set -x EDITOR vim
set -x EDITOR vim
set -x EDITOR vim
set -x EDITOR vim
set -x EDITOR vim
set -x EDITOR vim
set -x EDITOR vim
set -x EDITOR vim
set -x EDITOR vim
set -x EDITOR vim
set -x EDITOR vim
set -x EDITOR vim
set -x EDITOR vim
set -x EDITOR vim
set -x EDITOR vim
set -x EDITOR vim

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/horiesatoru/google-cloud-sdk/path.fish.inc' ]; . '/Users/horiesatoru/google-cloud-sdk/path.fish.inc'; end
