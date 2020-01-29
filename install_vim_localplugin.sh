#!/bin/sh

localplugindir="$HOME/dotfiles/vim_loalplugin";
swiftdir="${localplugindir}/apple-swift-syntax";

if [-e $localplugindir ]; then
  rm -rf localplugindir
fi

mkdir $localplugindir

cd $localplugindir

if [ -e $swiftdir ]; then
  rm -rf $swiftdir
fi

git clone https://github.com/apple/swift.git $swiftdir
cd $swiftdir
git filter-branch --subdirectory-filter utils/vim HEAD

