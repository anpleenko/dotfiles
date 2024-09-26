### Install configs for Desktop (Ubuntu 22.04/24.04)

```bash
mkdir -p ~/dotfiles \
 && cd ~/dotfiles \
 && wget https://github.com/anpleenko/dotfiles/releases/download/v26-09-2024-14h-55m-09s/dotfiles.tgz \
 && tar -zxvf dotfiles.tgz -C . \
 && ./desktop.sh \
 && rm -rf ~/dotfiles
```

### Install configs for Server (Ubuntu 22.04/24.04)

```bash
mkdir -p ~/dotfiles \
 && cd ~/dotfiles \
 && wget https://github.com/anpleenko/dotfiles/releases/download/v26-09-2024-14h-55m-09s/dotfiles.tgz \
 && tar -zxvf dotfiles.tgz -C . \
 && ./server.sh \
 && rm -rf ~/dotfiles
```
