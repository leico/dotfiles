platform='unknown'
unamestr=`uname`





#XDG base directory specification
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"

if [[ "$unamestr" == 'Darwin' ]]; then
  #VimR command
  export PATH="$PATH:/Applications/VimR.app/Contents/Resources"

  #Homebrew command
  export PATH="/Applications/Homebrew/bin:$PATH"
  export HOMEBREW_CACHE="$XDG_CACHE_HOME/Homebrew"


  #rbenv command
  export RBENV_ROOT=/Applications/Homebrew/opt/Ruby
  eval "$(rbenv init -)"

  #pyenv command
  export PYENV_ROOT=/Applications/Homebrew/opt/pyenv/Python
  eval "$(pyenv init -)"

elif [[ "$unamestr" == 'Linux' ]]; then

  #nodenv command
  export PATH="$HOME/.nodenv/bin:$PATH"
  eval "$(nodenv init -)"
  
fi
