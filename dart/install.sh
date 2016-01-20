#!/bin/sh

source $(dirname $0)/../fns.sh

brew_tap 'dart-lang/dart'
brew_install_or_upgrade 'dart'