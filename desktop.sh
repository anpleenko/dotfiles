#!/bin/bash

./common.sh

sudo apt install -y \
  chrome-gnome-shell \
  doublecmd-gtk \
  gnome-shell-extension-manager \
  gnome-tweaks \
  gthumb \
  rhythmbox \
  gnome-sushi \
  libfuse2 \
  synaptic \
  tilix \
  vlc \
  ffmpegthumbnailer \
  python3-nautilus \
  gparted \
  timeshift

# ubuntu change default terminal
# sudo update-alternatives --config x-terminal-emulator

# увеличиваем количества filewatchers
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

# устанавливаем использование локального времени
timedatectl set-local-rtc 1 --adjust-system-clock

mkdir -pv ~/.local/share/fonts
wget -c https://github.com/anpleenko/linux-fonts/releases/download/latest/linux-fonts.tar -O - | tar -xz -C ~/.local/share/fonts
