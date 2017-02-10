#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE[0]}")"

# Update myself
git pull origin master

# We're on macOS
if [[ "$(uname)" == "Darwin" ]]; then
 . ./install/brew.sh
 . ./install/brew-cask.sh
fi
