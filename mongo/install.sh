#!/bin/sh

source $(dirname $0)/../fns.sh

brew_install_or_upgrade 'mongo'
sudo mkdir -p /data/db
sudo chown -R $(whoami) /data/db