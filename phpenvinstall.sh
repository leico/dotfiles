#!/bin/sh

phpenvdir="/Applications/Homebrew/opt/phpenv"

# not exists phpenv or non file in rbenv
if [ \( ! -d $phpenvdir \) -o \( -z "`ls -A $phpenvdir`" \) ]; then

  #clone phpenv
  git clone https://github.com/phpenv/phpenv.git $phpenvdir

  #php-build install
  git clone https://github.com/php-build/php-build.git $phpenvdir/plugins/php-build

  echo "
  set this script in your .bash_profile macOS settings

  export PHPENV_ROOT=$phpenvdir
  eval \"\$(phpenv init -)\"

  restart your shell
  "



fi
