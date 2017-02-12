#
# Executes commands at the start of an interactive session.
#

# oh-my-zsh

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="jianyuan"

plugins=(
  autoenv
  git
  virtualenv
  virtualenvwrapper
)

source $ZSH/oh-my-zsh.sh

# Extras
[[ -r $HOME/.extra ]] && source $HOME/.extra
