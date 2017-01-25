#!/bin/sh

rubydir="/Applications/Ruby"

# create install directory
if [ ! -d $rubydir ]; then
  mkdir $rubydir
fi

rbenvdir="$rubydir/rbenv"

# not exist rbenv or non file in rbenv
if [ \( ! -d $rbenvdir \) -o \( -z "`ls -A $rbenvdir`" \) ]; then

  # clone rbenv
  git clone https://github.com/rbenv/rbenv.git $rbenvdir

  # make rbenv
  cd $rbenvdir
  ls -a
  ./src/configure
  make -C src

  #Add PATH
  echo "\n" >> ~/.bash_profile
  echo "#rbenv command" >> ~/.bash_profile
  echo "export PATH=\"\$PATH:/Applications/Ruby/rbenv/bin\"" >> ~/.bash_profile
  echo "export RBENV_ROOT=$rbenvdir" >> ~/.bash_profile
  echo "eval \"\$(rbenv init -)\"" >> ~/.bash_profile

  #ruby-build install
  git clone https://github.com/rbenv/ruby-build.git $rbenvdir/plugins/ruby-build

  # init
  bin/rbenv init

  echo "need restart terminal!"
fi
