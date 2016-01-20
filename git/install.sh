#!/bin/sh

source $(dirname $0)/../fns.sh

brew_install_or_upgrade 'git'
brew_install_or_upgrade 'hub'