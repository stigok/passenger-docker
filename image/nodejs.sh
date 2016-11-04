#!/bin/bash
set -e
source /pd_build/buildconfig
set -x

# Install node with Node Version Manager (forked version xtuple/nvm)
minimal_apt_get_install -y wget
wget -qO- https://raw.githubusercontent.com/xtuple/nvm/master/install.sh | bash
nvm install v6.9.1
nvm use v6.9.1
ln -s /usr/local/nvm/v6.9.1/bin/npm /usr/bin/npm
ln -s /usr/local/nvm/v6.9.1/bin/node /usr/bin/node
