#!/bin/sh

##############################
# modified thoughtbot/laptop #
##############################

source ./fns.sh


trap 'ret=$?; test $ret -ne 0 && printf "failed\n\n" >&2; exit $ret' EXIT

set -e

if [ ! -d "$HOME/.bin/" ]; then
  mkdir "$HOME/.bin"
fi

if [ ! -f "$HOME/.zshrc" ]; then
  touch "$HOME/.zshrc"
fi

# shellcheck disable=SC2016
append_to_zshrc 'export PATH="$HOME/.bin:$PATH"'

case "$SHELL" in
  */zsh) : ;;
  *)
    fancy_echo "Changing your shell to zsh ..."
      chsh -s "$(which zsh)"
    ;;
esac

if ! command -v brew >/dev/null; then
  fancy_echo "Installing Homebrew ..."
    curl -fsS \
      'https://raw.githubusercontent.com/Homebrew/install/master/install' | ruby

    append_to_zshrc '# recommended by brew doctor'

    # shellcheck disable=SC2016
    append_to_zshrc 'export PATH="/usr/local/bin:$PATH"' 1

    export PATH="/usr/local/bin:$PATH"
else
  fancy_echo "Homebrew already installed. Skipping ..."
fi

fancy_echo "Updating Homebrew formulas ..."
brew update

brew_install_or_upgrade 'ngrok'
brew_install_or_upgrade 'openssl'
brew unlink openssl && brew link openssl --force



############################
# modified holman/dotfiles #
############################

#!/usr/bin/env bash


cd "$(dirname "$0")/.."
DOTFILES_ROOT=$(pwd)


install_dotfiles () {
  fancy_echo "installing dotfiles"

  local overwrite_all=false backup_all=false skip_all=false

  for src in $(find "$DOTFILES_ROOT" -maxdepth 2 -name '*.symlink')
  do
    dst="$HOME/.$(basename "${src%.*}")"
    rm -rf "$dst"
    ln -s "$src" "$dst"
    echo "Linked $src to $dst"
  done
}

install_dotfiles

echo ""
fancy_echo "you can now run these to install other stuff:"

find "$DOTFILES_ROOT" -maxdepth 2 -name 'install.sh'
