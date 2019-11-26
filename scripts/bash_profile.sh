#!/usr/bin/env bash

# Setup bash profile

while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &


# creates bash_profile if doesn't exists
touch ~/.bash_profile

LINE='eval "$(rbenv init -)"'
grep -q "$LINE" ~/.bash_profile || echo "$LINE" >> ~/.bash_profile
BASH_C='[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion'
grep -q "$BASH_C" ~/.bash_profile || echo "$BASH_C" >> ~/.bash_profile
PROMPT='if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
    source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
  fi'
grep -q "$PROMPT" ~/.bash_profile || echo "$PROMPT" >> ~/.bash_profile

echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.bash_profile
export DOTFILES_BREW_PREFIX_COREUTILS=`brew --prefix coreutils`

# reload bash profile to make changes effective
source ~/.bash_profile

