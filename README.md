### Install configs for Desktop (Ubuntu 22.04/24.04)

```bash
mkdir -p ~/dotfiles \
 && cd ~/dotfiles \
 && wget https://github.com/anpleenko/dotfiles/releases/download/v21-08-2024-07h-18m-04s/dotfiles.tgz \
 && tar -zxvf dotfiles.tgz -C . \
 && ./desktop.sh \
 && rm -rf ~/dotfiles
```

### Install configs for Server (Ubuntu 22.04/24.04)

```bash
mkdir -p ~/dotfiles \
 && cd ~/dotfiles \
 && wget https://github.com/anpleenko/dotfiles/releases/download/v21-08-2024-07h-18m-04s/dotfiles.tgz \
 && tar -zxvf dotfiles.tgz -C . \
 && ./server.sh \
 && rm -rf ~/dotfiles
```
