#!/bin/bash

sudo apt install -y zsh

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

rm -rf ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions --depth=1

rm -rf ~/.oh-my-zsh/custom/themes/spaceship
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$(eval echo ~$USER)/.oh-my-zsh/custom/themes/spaceship-prompt" --depth=1
ln -s "$(eval echo ~$USER)/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme" "$(eval echo ~$USER)/.oh-my-zsh/custom/themes/spaceship.zsh-theme"
