#!/bin/bash

./common.sh

sudo apt install -y gnome-tweaks \
    chrome-gnome-shell \
    vlc \
    rhythmbox \
    simplescreenrecorder \
    doublecmd-gtk \
    synaptic

./install_sublime_products.sh

# копируем шрифты
wget https://storage.vaeum.com/fonts.tar.gz
tar -xzvf fonts.tar.gz
cd fonts && ./install.sh && cd ..

# переносим настройки для Double Commander
mkdir -pv ~/.config/doublecmd && yes | mv -vf  ~/doublecmd.xml ~/.config/doublecmd

./postinstall.sh
