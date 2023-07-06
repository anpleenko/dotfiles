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
  python3-nautilus

# работа с HEIC
# пример запуска
# for file in *.HEIC; do convert $file ${file%.HEIC}.png && rm $file; done
sudo apt install -y \
  heif-gdk-pixbuf \
  heif-thumbnailer \
  libheif1:amd64 \
  gimagereader \
  gpicview \
  converseen \
  imagemagick

# obs-studio 
sudo add-apt-repository -y ppa:obsproject/obs-studio
sudo apt update -y && sudo apt install -y obs-studio

./install_sublime_products.sh
./install_kitty.sh

./postinstall.sh
