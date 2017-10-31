#!/usr/bin/env bash

if [[ ! -x "$(command -v brew)" ]]; then
  echo "Install homebrew first!"
  exit 1
fi

# Install Caskroom
brew tap caskroom/cask

# Dev
dev=(
  # Daily
  flux
  gpg-suite
  spectacle
  # Dev
  atom
  iterm2
  keybase
  meld
  vagrant
  virtualbox
  # Internet
  google-chrome
  limechat
)
brew cask install "${dev[@]}"

# Remove outdated versions from the cellar.
brew cask cleanup
