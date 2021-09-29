# My dotfiles for linux (Ubuntu 21.04, PopOS! 21.04)

## Install on desktop with wget

```bash
cd /tmp && wget https://storage.vaeum.com/linux-dotfiles.tar.gz && tar -xzvf linux-dotfiles.tar.gz && cd dotfiles && ./desktop.sh
```

## Install on server with wget

```bash
cd /tmp && wget https://storage.vaeum.com/linux-dotfiles.tar.gz && tar -xzvf linux-dotfiles.tar.gz && cd dotfiles && ./server.sh
```

## Install only configs

```bash
cd /tmp && wget https://storage.vaeum.com/linux-dotfiles.tar.gz && tar -xzvf linux-dotfiles.tar.gz && cd dotfiles && yes | cp -vfa configs/. ~/
```
