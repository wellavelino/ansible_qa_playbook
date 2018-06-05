#!/usr/bin/env bash

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install Android and Java enviroement

brew tap caskroom/versions

# install a latest java8 version
brew cask install java8

# Android SDK and tools

brew install gradle
brew cask install --appdir="/Applications" android-studio
brew cask install android-sdk



ANDROID_HOME="/Users/wellingtonavelino/Library/Android/sdk"

# Setting Android home 
echo "export ANDROID_HOME=$ANDROID_HOME" >> ~/.bash_profile
echo "export PATH+=:$ANDROID_HOME/tools"  >> ~/.bash_profile
echo "export PATH+=:$ANDROID_HOME/platform-tools/"  >> ~/.bash_profile
echo "export PATH+=:$ANDROID_HOME/lib/"  >> ~/.bash_profile
echo "export PATH+=:$ANDROID_HOME/emulator/"  >> ~/.bash_profile
echo "export PATH+=:$ANDROID_HOME/tools/lib"   >> ~/.bash_profile


#Setting Java Home
echo "export $(/usr/bin/env java -XshowSettings:properties -version 2>&1 | grep "java.home" | sed -e 's/java.home/JAVA_HOME/;s/ //g;')" >> ~/.bash_profile


# Reloading the bash_profile
source ~/.bash_profile
