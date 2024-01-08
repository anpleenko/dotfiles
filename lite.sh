#!/bin/bash

# обновляем дистрибутив
./scripts/update.sh

# устанавливаем конфигурацию для vim
./scripts/vim-config.sh

# генерируем SSH ключ
./scripts/ssh-key.sh

# устанавливаем zsh с конфигом oh-my-zsh
./scripts/zsh.sh

# устанавливаем tmux
./scripts/tmux/install.sh
