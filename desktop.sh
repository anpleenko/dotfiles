#!/bin/bash

./common.sh

sudo apt install -y \
  chrome-gnome-shell \
  doublecmd-gtk \
  gnome-shell-extension-manager \
  gnome-tweaks \
  gthumb \
  rhythmbox \
  simplescreenrecorder \
  synaptic \
  tilix \
  vlc \
  python3-pip \
  python3-nautilus

./install_sublime_products.sh

# добавляем пункт запуска tilix в nautilus
pip install --user nautilus-open-any-terminal
nautilus -q

./postinstall.sh
