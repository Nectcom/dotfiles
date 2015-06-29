# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific aliases and functions

# aliases
alias ls='ls -a --color=auto'
alias cmtall='git commit -a'
alias gadd='git add'
alias pull='git pull'
alias push='git push'

git config --global core.editor "vim"
git config --global color.ui auto
git config --global alias.hist 'log --pretty=format:\"%h %ad | %s%d [%an]\" --graph --date=short'


export PS1='\[\e[01;32m\]\u\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[01;35m\][\w$(__git_ps1)]\[\e[0m\]\[\e[01;32m\]\\$\[\e[0m\]'

# import git prompt
if [ -f ~/git-completion.bash ]; then
  source ~/git-completion.bash
fi

if [ -f ~/git-prompt.sh ]; then
  source ~/git-prompt.sh
fi

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto
