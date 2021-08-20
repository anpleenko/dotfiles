# My dotfiles for linux (Ubuntu 20.04)

## Install Git

```bash
sudo apt update && sudo apt install -y git
```

## Install on desktop

```bash
cd /tmp && git clone https://github.com/anpleenko/linux-dotfiles.git dotfiles --depth=1 && cd dotfiles && ./desktop.sh
```

## Install on server

```bash
cd /tmp && git clone https://github.com/anpleenko/linux-dotfiles.git dotfiles --depth=1 && cd dotfiles && ./server.sh
```
