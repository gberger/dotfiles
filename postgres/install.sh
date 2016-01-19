#!/bin/sh

source ../fns.sh

brew_install_or_upgrade 'postgres'
brew_launchctl_restart 'postgresql'
