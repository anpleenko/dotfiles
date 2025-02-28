#!/bin/bash

sudo apt install -y apt-transport-https
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update -y && sudo apt install -y sublime-text sublime-merge

rm -rf ~/.config/sublime-text-3
cd ~/.config/
git clone https://github.com/anpleenko/sublime-text.git sublime-text-3
