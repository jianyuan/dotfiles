#!/usr/bin/env bash

# Install Homebrew
if [[ ! -x "$(command -v brew)" ]]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Install Zsh.
brew install zsh

# Switch to using brew-installed Zsh as default shell
if ! fgrep -q '/usr/local/bin/zsh' /etc/shells; then
  echo '/usr/local/bin/zsh' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/zsh;
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

# Install useful binaries.
utils=(
  ack
  ag
  awscli
  fzf
  git
  git-lfs
  gnupg
  gnupg2
  gpg-agent
  httpie
  hub
  jq
  mitmproxy
  pinentry-mac
  rename
  ssh-copy-id
  testssl
  tmux
  tree
)
brew install "${utils[@]}"

# Install languages.
languages=(
  go
  python
  python3
)
brew install "${languages[@]}"

# Remove outdated versions from the cellar.
brew cleanup
