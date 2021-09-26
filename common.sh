#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt dist-upgrade -y
sudo apt autoremove -y

# создаем папку для бинарников, папка находиться в PATH
mkdir -pv ~/.local/bin

sudo apt install -y mc \
  curl \
  wget \
  tmux \
  vim \
  htop \
  zip \
  tar \
  unzip \
  cifs-utils \
  autofs \
  autoconf \
  default-jre \
  default-jdk \
  maven \
  ffmpeg

./install_zsh.sh
./install_git-lfs.sh
./install_docker.sh
./install_nodejs_16.sh
./install_python_3.sh
./install_allure.sh

# copy configs
yes | cp -vf configs/.* ~/

# увеличиваем колличество filewatchers
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

# устанавливаем использование локального времени
timedatectl set-local-rtc 1 --adjust-system-clock

# создаем ssh ключ
ssh-keygen -q -t rsa -C "temp@ssh.key" -b 4096 -N '' -f ~/.ssh/id_rsa <<<y 2>&1 >/dev/null
