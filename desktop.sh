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
sudo add-apt-repository --yes ppa:obsproject/obs-studio
sudo apt update -y && sudo apt install -y obs-studio

./install_sublime_products.sh
./install_kitty.sh

mkdir -pv ~/.local/share/fonts \
 && wget -c https://github.com/anpleenko/linux-fonts/releases/download/latest/linux-fonts.tar -O - | tar -xz -C ~/.local/share/fonts


./scripts/local-time.sh

# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions --depth=1

# powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

./postinstall.sh
