#XDG base directory specification
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"

#VimR command
export PATH="$PATH:/Applications/VimR.app/Contents/Resources"

#Homebrew command
export PATH="/Applications/Homebrew/bin:$PATH"
export HOMEBREW_CACHE="$XDG_CACHE_HOME/Homebrew"
#  for ruby-build, change openSSL version
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
