#!/bin/sh

source $(dirname $0)/../fns.sh

git clone https://github.com/creationix/nvm.git ~/.nvm
cd ~/.nvm
git checkout `git describe --abbrev=0 --tags`

. ~/.nvm/nvm.sh