
GREEN="\[\e[1;32m\]"
PURPLE="\[\e[1;34m\]"
COLOR_RESET="\[\e[0m\]"
export PS1="${GREEN}\u ${PURPLE}\w ${GREEN}$ ${COLOR_RESET}"

#get OS name
unamestr=`uname`


#XDG base directory specification
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"



if [[ "$unamestr" == 'Darwin' ]]; then  #for macOS setting

  #append VimR command PATH
  export PATH="$PATH:/Applications/VimR.app/Contents/Resources"

  #prepend Homebrew PATH and set chache direcotry
  export PATH="/Applications/Homebrew/bin:$PATH"
  export PATH="/Applications/Homebrew/sbin:$PATH"
  export HOMEBREW_CACHE="$XDG_CACHE_HOME/Homebrew"

  #prepend gettext PATH
  export PATH="/Applications/Homebrew/opt/gettext/bin:$PATH"

  #prepend openssl PATH
  export PATH="/Applications/Homebrew/opt/openssl/bin:$PATH"

  #for ruby-build, change openSSL version
  export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

  #rbenv command
  export RBENV_ROOT=/Applications/Homebrew/opt/Ruby
  eval "$(rbenv init -)"

  #pyenv command
  export PYENV_ROOT=/Applications/Homebrew/opt/pyenv/Python
  eval "$(pyenv init -)"

  #nodenv command
  export NODENV_ROOT=/Applications/Homebrew/opt/nodenv/Node
  eval "$(nodenv init -)"

  #phpenv command
  export PHPENV_ROOT=/Applications/Homebrew/opt/phpenv
  eval "$(phpenv init -)"

elif [[ "$unamestr" == 'Linux' ]]; then #for Linux setting

  #nodenv command
  export PATH="$HOME/.nodenv/bin:$PATH"
  eval "$(nodenv init -)"

fi
