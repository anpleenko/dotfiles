# My dotfiles for linux (Ubuntu 20.04)


## Install on desktop

```bash
cd /tmp
sudo apt update && sudo apt install -y git
git clone https://github.com/anpleenko/linux-dotfiles.git dotfiles --depth=1
cd dotfiles
./desktop.sh
```

## Install on server

```bash
cd /tmp
sudo apt update && sudo apt install -y git
git clone https://github.com/anpleenko/linux-dotfiles.git dotfiles --depth=1
cd dotfiles
./server.sh
```
