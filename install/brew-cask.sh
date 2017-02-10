#!/usr/bin/env bash

if [[ ! -x "$(command -v brew)" ]]; then
  echo "Install homebrew first!"
  exit 1
fi

# Install Caskroom
brew tap caskroom/cask

# Daily
brew cask install spectacle
brew cask install flux
brew cask install gpgtools

# Dev
brew cask install github-desktop
brew cask install iterm2
brew cask install vagrant
brew cask install virtualbox

# Internet
brew cask install limechat
