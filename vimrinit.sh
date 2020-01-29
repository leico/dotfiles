#!/bin/sh

deindir="$HOME/.config/nvim/dein";
reposdir="${deindir}/repos";

if [ -e $reposdir ]; then
  rm -rf $reposdir
fi
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh $deindir
rm ./installer.sh

