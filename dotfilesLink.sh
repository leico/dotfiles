#!/bin/sh
ln -sf ~/dotfiles/.gitignore ~/.gitignore
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.bash_profile ~/.bash_profile

if [ ! -d "~/.config" ]; then
  mkdir ~/.config
fi
ln -sf ~/dotfiles/nvim ~/.config/nvim 
