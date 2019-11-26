#!/usr/bin/env bash

# Setup git

while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

cp scripts/git/.gitconfig  ~/.gitconfig
source ~/.gitconfig

cp  scripts/git/.gitignore_global ~/.gitignore_global
source ~/.gitignore_global
