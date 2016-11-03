#!/bin/bash
set -e
source /pd_build/buildconfig
set -x

# Install node with Node Version Manager (forked version xtuple/nvm)
minimal_apt_get_install -y wget
wget -qO- https://raw.githubusercontent.com/xtuple/nvm/master/install.sh | sudo bash
nvm install v6.9.1
nvm use v6.9.1
