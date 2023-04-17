#!/bin/bash

# обновляем дистрибутив
sudo apt update -y \
  && sudo apt upgrade -y \
  && sudo apt dist-upgrade -y \
  && sudo apt-get autoremove -y \
  && sudo apt-get autoclean -y

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

# copy configs
yes | cp -vfa configs/. ~/

./install_allure.sh
./install_docker.sh
./install_git-lfs.sh
./install_python_3.sh
./install_zsh.sh

# увеличиваем колличество filewatchers
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

# устанавливаем использование локального времени
timedatectl set-local-rtc 1 --adjust-system-clock

# создаем ssh ключ
ssh-keygen -q -t ed25519 -C "$(whoami)@$(hostname)" -N '' -f ~/.ssh/id_ed25519 <<<y 2>&1 >/dev/null

# устанавливаем tmux-plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
