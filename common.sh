#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt dist-upgrade -y
sudo apt autoremove -y

mkdir -pv ~/.bin

sudo apt install -y mc curl wget htop zip tar unzip cifs-utils autofs autoconf

ssh-keygen -q -t rsa -C "temp@ssh.key" -b 4096 -N '' -f ~/.ssh/id_rsa <<<y 2>&1 >/dev/null

./git/install.sh
./vim/install.sh
./tmux/install.sh
./zsh/install.sh

./install_docker.sh
./install_nodejs_16.sh
./install_python_3.sh
./install_allure.sh

# увеличиваем колличество filewatchers
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

# устанавливаем использование локального времени
timedatectl set-local-rtc 1 --adjust-system-clock
