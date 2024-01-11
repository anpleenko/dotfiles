#!/bin/bash

sudo apt install -y \
  autoconf  \
  autofs  \
  cifs-utils \
  curl \
  default-jdk \
  default-jre \
  ffmpeg \
  git \
  htop \
  make \
  maven \
  mc \
  tar \
  tmux \
  ttfautohint \
  unzip \
  vim  \
  wget \
  zip

# нужно для запуска appimage программ
sudo apt install libfuse2

./install_allure.sh
./install_git-lfs.sh
./install_docker.sh
./install_python_3.sh
./install_zsh.sh

# copy configs
yes | cp -vfa configs/. ~/

# увеличиваем колличество filewatchers
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
