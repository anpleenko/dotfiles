#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt dist-upgrade -y
sudo apt autoremove -y

mkdir -pv ~/.bin

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

# install git
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt update
sudo apt install -y git

# install git-lfs
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
sudo apt -y install git-lfs
git lfs install

ssh-keygen -q -t rsa -C "temp@ssh.key" -b 4096 -N '' -f ~/.ssh/id_rsa <<<y 2>&1 >/dev/null

./install_zsh.sh
./install_git.sh
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
