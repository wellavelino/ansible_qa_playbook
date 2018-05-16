#!/usr/bin/env bash

# Install Android and Java enviroement

brew tap caskroom/versions

# install a latest java8 version
brew cask install java8

# Android SDK and tools

brew install gradle
brew install android-sdk
brew install android-ndk

android update sdk --no-ui

