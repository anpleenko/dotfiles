#!/bin/bash

# обновляем дистрибутив
sudo apt update -y &&
  sudo apt upgrade -y &&
  sudo apt dist-upgrade -y &&
  sudo apt-get autoremove -y &&
  sudo apt-get autoclean -y

sudo apt install -y \
  curl \
  git \
  htop \
  ncdu \
  make \
  mc \
  tar \
  tmux \
  unzip \
  vim \
  wget \
  zip \
  p7zip \
  unrar \
  zsh

# устанавливаем утилиты для работы с файловыми системами
# sudo apt install -y autofs nfs-common

# ./install_allure.sh
# ./install_git-lfs.sh
./install_docker.sh
# ./install_python_3.sh
./install_zsh.sh

# copy configs
yes | cp -vfa configs/. ~/

# создаем ssh ключ
ssh-keygen -o -a 100 -t ed25519 -N '' -f ~/.ssh/id_ed25519 -C "$(whoami)@$(hostname)" <<<y >/dev/null 2>&1

# устанавливаем tmux-plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
