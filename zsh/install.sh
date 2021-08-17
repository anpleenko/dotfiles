#!/bin/bash

sudo apt install -y zsh

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

yes | cp -vf .zshrc ~/
yes | cp -vf .zsh_aliases ~/
yes | cp -vf .zsh_work_aliases ~/

rm -rf ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions --depth=1

rm -rf ~/.oh-my-zsh/custom/themes/spaceship-prompt
cd  ~/.oh-my-zsh/custom/themes
git clone https://github.com/spaceship-prompt/spaceship-prompt.git spaceship-prompt --depth=1
ln -s spaceship-prompt/spaceship.zsh-theme spaceship.zsh-theme
