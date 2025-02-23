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
  gnome-sushi \
  synaptic \
  tilix \
  vlc \
  ffmpegthumbnailer \
  python3-nautilus \
  gparted \
  timeshift

# sudo apt install -y \
#   doublecmd-gtk \
#   rhythmbox \
#   simplescreenrecorder \
#   synaptic \
#   tilix \
#   vlc

# работа с HEIC
# пример запуска
# for file in *.HEIC; do convert $file ${file%.HEIC}.png && rm $file; done
# sudo apt install -y \
#   heif-gdk-pixbuf \
#   heif-thumbnailer \
#   libheif1:amd64 \
#   gimagereader \
#   gpicview \
#   converseen \
#   imagemagick

# obs-studio
# sudo add-apt-repository --yes ppa:obsproject/obs-studio
# sudo apt update -y && sudo apt install -y obs-studio

# ./install_sublime_products.sh
# ./install_kitty.sh

# нужно для запуска appimage программ
# sudo apt install libfuse2

# устанавливаем использование локального времени
timedatectl set-local-rtc 1 --adjust-system-clock

mkdir -pv ~/.local/share/fonts &&
  wget -c https://github.com/anpleenko/linux-fonts/releases/download/latest/linux-fonts.tar -O - | tar -xz -C ~/.local/share/fonts

./postinstall.sh
