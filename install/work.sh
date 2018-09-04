#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v


while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

brew install caskroom/cask/brew-cask

#dev
brew cask install --appdir="/Applications" iterm2
brew cask install --appdir="/Applications" spotify
brew cask install --appdir="/Applications" google-chrome
# This application needs to be verified 
# brew cask install --appdir="/Applications" franz
brew cask install --appdir="/Applications" caskroom/cask/intellij-idea-ce

# checkout my emacs configuration
cd ~/.emacs.d && git clone https://github.com/wellavelino/emacs_configuration.git
cp -R custom/ ~/.emacs.d
