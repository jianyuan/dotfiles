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
  spectacle
  flux
  gpgtools
  # Dev
  github-desktop
  iterm2
  meld
  vagrant
  virtualbox
  # Internet
  limechat
)
brew cask install "${dev[@]}"

# Remove outdated versions from the cellar.
brew cask cleanup
