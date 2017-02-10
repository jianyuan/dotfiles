#!/usr/bin/env bash

export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Update myself
[[ -d "$DOTFILES_DIR/.git" ]] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# Symlinks
ln -sfv "$DOTFILES_DIR/git/.gitignore" ~
ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/zsh/.zlogin" ~
ln -sfv "$DOTFILES_DIR/zsh/.zpreztorc" ~
ln -sfv "$DOTFILES_DIR/zsh/.zprofile" ~
ln -sfv "$DOTFILES_DIR/zsh/.zphenv" ~
ln -sfv "$DOTFILES_DIR/zsh/.zshrc" ~

. "$DOTFILES_DIR/install/zsh.sh"

# We're on macOS
if [[ "$(uname)" == "Darwin" ]]; then
 . "$DOTFILES_DIR/install/brew.sh"
 . "$DOTFILES_DIR/install/brew-cask.sh"
fi
