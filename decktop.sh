#!/bin/bash

./common.sh

sudo apt install -y gnome-tweak-tool \
    chrome-gnome-shell \
    vlc \
    rhythmbox \
    simplescreenrecorder \
    doublecmd-gtk

./install_sublime_products.sh

cp -vf fonts/JetBrainsMono/*.ttf ~/.local/share/fonts
cp -vf fonts/iosevka/*.ttf ~/.local/share/fonts
cp -vf fonts/RootUI/*.ttf ~/.local/share/fonts
cp -vf fonts/Inter/*.otf ~/.local/share/fonts
cp -vf fonts/LiberationMono/*.otf ~/.local/share/fonts

fc-cache -fv
