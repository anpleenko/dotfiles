#!/bin/bash

cd /tmp

mkdir dotfiles

curl -o dotfiles.tgz -Ls https://github.com/anpleenko/linux-dotfiles/releases/download/latest/dotfiles.tgz

sudo tar -zxvf dotfiles.tgz -C /tmp/dotfiles

cd /tmp/dotfiles

./install_desktop.sh
