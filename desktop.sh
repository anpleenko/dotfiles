#!/bin/bash

./common.sh

sudo apt install -y gnome-tweak-tool \
    chrome-gnome-shell \
    vlc \
    rhythmbox \
    simplescreenrecorder \
    doublecmd-gtk \
    synaptic

./install_sublime_products.sh

cd fonts && ./install.sh

./postinstall.sh
