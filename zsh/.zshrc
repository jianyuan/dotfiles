#
# Executes commands at the start of an interactive session.
#

# oh-my-zsh

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# Directory-based Environments
source ~/.autoenv/activate.sh

# virtualenvwrapper
source /usr/local/bin/virtualenvwrapper_lazy.sh

# Extras
[[ -r $HOME/.extra ]] && source $HOME/.extra
