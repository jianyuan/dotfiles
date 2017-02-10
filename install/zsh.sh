#!/usr/bin/env bash

# Install oh-my-zsh
OH_MY_ZSH_DIR="$HOME/.oh-my-zsh"
if [[ ! -d $OH_MY_ZSH_DIR ]]; then
  git clone git://github.com/robbyrussell/oh-my-zsh.git $OH_MY_ZSH_DIR
fi

# Directory-based Environments
AUTOENV_DIR="$HOME/.autoenv"
if [[ -d $AUTOENV_DIR ]]; then
  pushd $AUTOENV_DIR; git pull; popd
else
  git clone git://github.com/kennethreitz/autoenv.git $AUTOENV_DIR
fi
