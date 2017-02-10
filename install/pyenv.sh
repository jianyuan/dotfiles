#!/usr/bin/env bash

PYENV_DIR="$HOME/.pyenv"

# Install or update pyenv
if [[ -d $PYENV_DIR ]]; then
  pushd $PYENV_DIR
    git pull
  popd
else
  git clone https://github.com/yyuu/pyenv.git $PYENV_DIR
fi

# Install or update pyenv-virtualenv
PYENV_VIRTUALENV_DIR="$PYENV_DIR/plugins/pyenv-virtualenv"
if [[ -d $PYENV_VIRTUALENV_DIR ]]; then
  pushd $PYENV_VIRTUALENV_DIR
    git pull
  popd
else
  git clone https://github.com/yyuu/pyenv-virtualenv.git $PYENV_VIRTUALENV_DIR
fi
