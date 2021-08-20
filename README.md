# My dotfiles for linux (Ubuntu 20.04)


## Install on desktop

```bash
sudo apt update && sudo apt install -y git
cd /tmp && git clone https://github.com/anpleenko/linux-dotfiles.git dotfiles --depth=1 && cd dotfiles && ./desktop.sh
```

## Install on server

```bash
sudo apt update && sudo apt install -y git
cd /tmp && git clone https://github.com/anpleenko/linux-dotfiles.git dotfiles --depth=1 && cd dotfiles && ./server.sh
```
