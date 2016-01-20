#!/bin/sh

source $(dirname $0)/../fns.sh

brew_tap homebrew/versions
brew_install_or_upgrade homebrew/versions/node012