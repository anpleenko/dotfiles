#!/bin/bash

# создаем ssh ключ
ssh-keygen -q -t ed25519 -C "$(whoami)@$(hostname)" -N '' -f ~/.ssh/id_ed25519 <<<y 2>&1 >/dev/null
