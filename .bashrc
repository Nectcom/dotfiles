# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
  . /etc/bash_completion
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# import git prompt
source ~/dotfiles/git-prompt.sh
source ~/dotfiles/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

# User specific aliases and functions
export PS1="\[\e[01;32m\]\u\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[01;35m\][\w$(__git_ps1)]\[\e[0m\]\[\e[01;32m\]\\$\[\e[0m\]"

# aliases
alias ls='ls -a --color=auto'
alias cmtall='git commit -a'
alias gadd='git add'
alias pull='git pull'
alias push='git push'

git config --global core.editor "vim"
