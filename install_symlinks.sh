#!/usr/bin/env bash

DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Update myself
[[ -d "$DOTFILES_DIR/.git" ]] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# Symlinks
ln -sfv "$DOTFILES_DIR/git/.gitignore" "$HOME/.gitignore"
ln -sfv "$DOTFILES_DIR/git/.gitconfig" "$HOME/.gitconfig"
ln -sfv "$DOTFILES_DIR/zsh/.zprofile" "$HOME/.zprofile"
ln -sfv "$DOTFILES_DIR/zsh/.zshenv" "$HOME/.zshenv"
ln -sfv "$DOTFILES_DIR/zsh/.zshrc" "$HOME/.zshrc"
ln -sfv "$DOTFILES_DIR/zsh/jianyuan.zsh-theme" "$HOME/.oh-my-zsh/custom"
ln -sfv "$DOTFILES_DIR/gnupg/gpg-agent.conf" "$HOME/.gnupg/gpg-agent.conf"
ln -sfv "$DOTFILES_DIR/gnupg/gpg.conf" "$HOME/.gnupg/gpg.conf"
