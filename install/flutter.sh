#!/usr/bin/env bash

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

stable_version=flutter_macos_v1.5.4-hotfix.2-stable.zip

cd  ~/Downloads

curl -O "https://storage.googleapis.com/flutter_infra/releases/stable/macos/$stable_version"
mkdir ~/Library/flutter_sdk
unzip ~/Downloads/$stable_version -d "~/Library/flutter_sdk"
 export PATH="$PATH:~/code/flutter/bin"
