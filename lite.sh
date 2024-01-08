#!/bin/bash

# обновляем дистрибутив
./scripts/update.sh

# устанавливаем конфигурацию для vim
./scripts/vim-config.sh

# устанавливаем midnight commander
./scripts/mc.sh

# генерируем SSH ключ
./scripts/ssh-key.sh

# устанавливаем tmux
cd scripts/tmux && ./install.sh && cd .. && cd ..

# устанавливаем zsh с конфигом oh-my-zsh
./scripts/zsh.sh
