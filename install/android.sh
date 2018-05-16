#!/usr/bin/env bash

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install Android and Java enviroement

brew tap caskroom/versions

# install a latest java8 version
brew cask install java8

# Android SDK and tools

brew install gradle
brew install android-sdk
brew install android-ndk

android update sdk --no-ui

