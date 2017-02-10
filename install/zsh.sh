#!/usr/bin/env bash

export ZPREZTO_DIR
ZPREZTO_DIR="$HOME/.zprezto"

# Install or update Prezto
if [[ -d $ZPREZTO_DIR ]]; then
  pushd $ZPREZTO_DIR; git pull && git submodule update --init --recursive; popd
else
  git clone --recursive https://github.com/sorin-ionescu/prezto.git $ZPREZTO_DIR
fi

# Directory-based Environments
AUTOENV_DIR="$HOME/.autoenv"
if [[ -d $AUTOENV_DIR ]]; then
  pushd $AUTOENV_DIR; git pull; popd
else
  git clone git://github.com/kennethreitz/autoenv.git $AUTOENV_DIR
fi
