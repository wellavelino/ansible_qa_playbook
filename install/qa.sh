#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &


gems=(
    pry
    appium_lib
    appium_console
)

gem install "${gems[@]}"

brew install node

brew cask install emacs

# Install Appium iOS Dependencies
brew install carthage
brew install libimobiledevice --HEAD
brew install ios-deploy

# Remove outdated versions from the cellar.
brew cleanup

# Install Appium
npm install -g appium
