export PATH=.:./bin:~/bin:/usr/local/bin:/usr/local/sbin:$PATH

# Define bash colours
source ~/config/shared/dotfiles/bash_colours.bash
# Setup Git completion
source ~/config/shared/dotfiles/git-completion.bash

export CLICOLOR=1
export EDITOR="mate -w"

# Configure prompt
export GIT_PS1_SHOWDIRTYSTATE=true
export PS1="\[$IGreen\]\n\h:\w \[$Yellow\](\$(~/.rvm/bin/rvm-prompt v p g s)) \[$Yellow\]\$(__git_ps1 [%s]) \[$BIGreen\]\n→ \[$Color_Off\] "

# Load RVM
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Add Postgres binaries to path
export PATH=$PATH:/Library/PostgreSQL/9.0/bin

# Aliases
alias rm='rm -i'
alias g='git'


