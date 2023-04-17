#!/bin/bash

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

sudo apt-get update
sudo apt-get install sublime-text sublime-merge

rm -rf ~/.config/sublime-text-3
cd ~/.config/
git clone https://github.com/anpleenko/sublime-text.git sublime-text-3
