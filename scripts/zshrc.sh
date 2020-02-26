#!/usr/bin/env bash

# Setup zshrc

while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &


# creates zshrc if doesn't exists
touch ~/.zshrc

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
USER=$(whoami)

# Path to your oh-my-zsh installation.
export ZSH="/Users/${USER}/.oh-my-zsh"

ZSH_THEME="avit"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='emacs'
# else
#   export EDITOR='nano'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

LINE='eval "$(rbenv init -)"'
grep -q "$LINE" ~/.bash_profile || echo "$LINE" >> ~/.zshrc

echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc
export DOTFILES_BREW_PREFIX_COREUTILS=`brew --prefix coreutils`

# reload zshrc to make changes effective
source ~/.zshrc

