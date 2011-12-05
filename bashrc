# Basic path setup.
export PATH=$PATH:/usr/local/sbin::~/bin

# RVM
[[ -s "/Users/donaldcrowe/.rvm/scripts/rvm" ]] && source "/Users/donaldcrowe/.rvm/scripts/rvm"  # This loads RVM into a shell session.

# RBENV
# # Add rbenv to path
# export PATH=$PATH:~/.rbenv/bin
# # Add rbenv shims to front of path
# export PATH=~/.rbenv/shims:$PATH
# # Load rbenv bash completions
# source "/Users/donaldcrowe/.rbenv/libexec/../completions/rbenv.bash"
# # Rebuild the shim binaries, and suppress the stdout from it.
# rbenv rehash 2>/dev/null

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
export PS1="\[$IGreen\]\n\h:\w \[$Yellow\]\$(__git_ps1 [%s]) \[$Blue\][\$(~/.rvm/bin/rvm-prompt u v p g)]\[$BIGreen\]\n→ \[$Color_Off\] "

# Aliases
alias rm='rm -i'
alias g='git'

# Rails Aliases
function rt() { rails new "$@" -T --skip-bundle -m ~/Projects/Archive/rails_31_template/template.rb; }

alias rs='rails server thin --debug'
alias rc='rails console'
