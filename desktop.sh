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

# работа с HEIC
# пример запуска
# for file in *.HEIC; do convert $file ${file%.HEIC}.jpg && rm $file; done
sudo apt install -y heif-gdk-pixbuf heif-thumbnailer libheif1:amd64 gimagereader gpicview converseen imagemagick

./install_sublime_products.sh

./postinstall.sh
