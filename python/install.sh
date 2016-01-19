#!/bin/sh

source ../fns.sh

brew_install_or_upgrade 'python'
pip install virtualenv
pip install virtualenvwrapper
mkdir ~/Envs