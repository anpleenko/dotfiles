# My dotfiles for linux (Ubuntu)


## Install on desktop

```bash
cd /tmp
sudo apt update && sudo apt install -y git
git clone https://github.com/anpleenko/linux-dotfiles.git dotfiles
cd dotfiles
./desktop.sh
```

## Install on server

```bash
cd /tmp
sudo apt update && sudo apt install -y git
git clone https://github.com/anpleenko/linux-dotfiles.git dotfiles
cd dotfiles
./server.sh
```
