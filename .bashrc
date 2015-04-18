# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
export PS1="\[\e[01;32m\]\u\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;35m\][\w]\[\e[0m\]\[\e[01;32m\]\\$\[\e[0m\]"

# aliases
alias ls='ls -a --color=auto'
alias cmtall='git commit -a'
alias gadd='git add'
alias pull='git pull'
alias push='git push'
