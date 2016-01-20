#!/bin/sh

source $(dirname $0)/../fns.sh

brew_install_or_upgrade 'redis'
brew_launchctl_restart 'redis'