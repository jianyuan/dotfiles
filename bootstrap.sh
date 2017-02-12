#!/usr/bin/env bash

DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Update myself
[[ -d "$DOTFILES_DIR/.git" ]] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# We're on macOS
if [[ "$(uname)" == "Darwin" ]]; then
  "$DOTFILES_DIR/install/brew.sh"
 "$DOTFILES_DIR/install/brew-cask.sh"
fi

"$DOTFILES_DIR/install/python.sh"
"$DOTFILES_DIR/install/zsh.sh"

"$DOTFILES_DIR/install_symlinks.sh"
