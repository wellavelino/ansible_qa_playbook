if ! is-macos -o ! is-executable ruby -o ! is-executable curl -o ! is-executable git; then
echo "Skipped: Homebrew (missing: ruby, curl and/or git)"
return
fi

if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew tap Goles/battery
brew update
brew upgrade

# Install packages

apps=(
bash-completion2
git-completion
git
git-extras
nano
python
ruby-build
rbenv
bash-git-prompt
docker
)

brew install "${apps[@]}"

LINE='eval "$(rbenv init -)"'
grep -q "$LINE" ~/.bash_profile || echo "$LINE" >> ~/.bash_profile

export DOTFILES_BREW_PREFIX_COREUTILS=`brew --prefix coreutils`
set-config "DOTFILES_BREW_PREFIX_COREUTILS" "$DOTFILES_BREW_PREFIX_COREUTILS" "$DOTFILES_CACHE"

ln -sfv "$DOTFILES_DIR/etc/mackup/.mackup.cfg"

brew cleanup
