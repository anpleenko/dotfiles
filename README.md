# My dotfiles for linux (Ubuntu 20.04)

## Install Git

```bash
sudo apt update && sudo apt install -y git
```

## Install on desktop with Git

```bash
cd /tmp && git clone https://github.com/anpleenko/linux-dotfiles.git dotfiles --depth=1 && cd dotfiles && ./desktop.sh
```

## Install on server with Git

```bash
cd /tmp && git clone https://github.com/anpleenko/linux-dotfiles.git dotfiles --depth=1 && cd dotfiles && ./server.sh
```

## Install on desktop with curl

```bash
cd /tmp && curl -o linux-dotfiles.tgz -Ls https://storage.vaeum.com/linux-dotfiles.tgz && tar xvf linux-dotfiles.tgz --one-top-level=linux-dotfiles -C /tmp && ./desktop.sh
```

## Install on server with curl

```bash
cd /tmp && curl -o linux-dotfiles.tgz -Ls https://storage.vaeum.com/linux-dotfiles.tgz && tar xvf linux-dotfiles.tgz --one-top-level=linux-dotfiles -C /tmp && ./server.sh
```
