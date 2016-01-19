#!/bin/sh

source ../fns.sh

brew_install_or_upgrade 'redis'
brew_launchctl_restart 'redis'