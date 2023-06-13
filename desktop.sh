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
  python3-nautilus \
  imagemagick

# работа с HEIC
sudo apt install -y heif-gdk-pixbuf heif-thumbnailer libheif1:amd64 gimagereader gpicview converseen

./install_sublime_products.sh

./postinstall.sh
