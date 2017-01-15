#!/bin/sh
ln -sf ~/dotfiles/gitignore ~/.gitignore
ln -sf ~/dotfiles/gitconfig ~/.gitconfig
ln -sf ~/dotfiles/bash_profile ~/.bash_profile

## NeoVim/VimR Setting
# XDG base directory specification
if [ ! -d ~/.config ]; then
  mkdir ~/.config
fi
if [ ! -d ~/.cache ]; then
  mkdir ~/.cache
fi
if [ ! -d ~/.local ]; then
  mkdir -p ~/.local/share
fi

#import nvim settings
ln -sf ~/dotfiles/nvim ~/.config/nvim 
