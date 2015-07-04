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

export LS_COLORS="di=35;1"

git config --global core.editor "vim"
git config --global color.ui auto
git config --global alias.hist 'log --pretty=format:\"%h %ad | %s%d [%an]\" --graph --date=short'


export PS1='\[\e[01;32m\]\u\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[01;35m\][\w$(__git_ps1)]\[\e[0m\]\[\e[01;32m\]\\$\[\e[0m\]'

# import git prompt
if [ -f ~/dotfiles/git-completion.bash ]; then
  source ~/dotfiles/git-completion.bash
fi

if [ -f ~/dotfiles/git-prompt.sh ]; then
  source ~/dotfiles/git-prompt.sh
fi

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto
