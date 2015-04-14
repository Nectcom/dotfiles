#!/bin/sh

echo "installing dotfiles..."

ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/vimmod ~/.vim
ln -sf ~/dotfiles/.bashrc ~/.bashrc

echo "everything done."
