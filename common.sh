#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt dist-upgrade -y
sudo apt autoremove -y

# создаем папку для бинарников, папка находиться в PATH
mkdir -pv ~/.local/bin

sudo apt install -y autoconf autofs cifs-utils ffmpeg htop mc tmux vim
sudo apt install -y wget curl
sudo apt install -y git git-lfs
sudo apt install -y maven default-jdk default-jre
sudo apt install -y tar unzip zip

./install_zsh.sh
./install_docker.sh
./install_nodejs_16.sh
./install_python_3.sh
./install_allure.sh

git lfs install

# copy configs
yes | cp -vf configs/.* ~/

# увеличиваем колличество filewatchers
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

# устанавливаем использование локального времени
timedatectl set-local-rtc 1 --adjust-system-clock

# создаем ssh ключ
ssh-keygen -q -t rsa -C "temp@ssh.key" -b 4096 -N '' -f ~/.ssh/id_rsa <<<y 2>&1 >/dev/null
