#!/bin/sh

source $(dirname $0)/../fns.sh

brew_install_or_upgrade 'python'
pip install virtualenv
pip install virtualenvwrapper
mkdir ~/Envs