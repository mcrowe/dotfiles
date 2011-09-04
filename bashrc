# Basic path setup.
export PATH=$PATH:/usr/local/sbin::~/bin

# Add rbenv to path
export PATH=$PATH:~/.rbenv/bin
# Add rbenv shims to front of path
export PATH=~/.rbenv/shims:$PATH
# Load rbenv bash completions
source "/Users/donaldcrowe/.rbenv/libexec/../completions/rbenv.bash"
# Rebuild the shim binaries, and suppress the stdout from it.
rbenv rehash 2>/dev/null

# Add bundler binstubs to front of path
export PATH=./bin:$PATH

# Define bash colours
source ~/bin/dotfiles/bash_colours.bash
# Setup Git completion
source ~/bin/dotfiles/git-completion.bash

export CLICOLOR=1
export EDITOR="mate -w"

# Configure prompt
export GIT_PS1_SHOWDIRTYSTATE=true
export PS1="\[$IGreen\]\n\h:\w \[$Yellow\]\$(__git_ps1 [%s]) \[$BIGreen\]\n→ \[$Color_Off\] "

# Aliases
alias rm='rm -i'
alias g='git'
function rt() { rails new "$@" -T --skip-bundle -m ~/workspace/rails_31_template/template.rb; }
