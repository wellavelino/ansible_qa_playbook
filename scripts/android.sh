#!/usr/bin/env bash

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

USER=$(whoami)
#edit the file above to your current directory
ANDROID_HOME="/Users/${USER}/Library/Android/sdk"

# example
# ANDROID_HOME="/Users/machineName/Library/Android/sdk"

# Setting Android home 
echo "export ANDROID_HOME=$ANDROID_HOME" >> ~/.bash_profile
echo "export PATH+=:$ANDROID_HOME/tools"  >> ~/.bash_profile
echo "export PATH+=:$ANDROID_HOME/platform-tools/"  >> ~/.bash_profile
echo "export PATH+=:$ANDROID_HOME/lib/"  >> ~/.bash_profile
echo "export PATH+=:$ANDROID_HOME/emulator/"  >> ~/.bash_profile
echo "export PATH+=:$ANDROID_HOME/tools/lib"   >> ~/.bash_profile

# Reloading the bash_profile
source ~/.bash_profile
