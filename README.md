# My dotfiles for linux (Ubuntu 20.04, PopOS! 21.04)

## Install on desktop with curl

```bash
cd /tmp && curl -o linux-dotfiles.tgz -Ls https://storage.vaeum.com/linux-dotfiles.tgz && tar xvf linux-dotfiles.tgz --one-top-level=linux-dotfiles -C /tmp && cd /tmp/linux-dotfiles/ && ./desktop.sh
```

## Install on server with curl

```bash
cd /tmp && curl -o linux-dotfiles.tgz -Ls https://storage.vaeum.com/linux-dotfiles.tgz && tar xvf linux-dotfiles.tgz --one-top-level=linux-dotfiles -C /tmp && cd /tmp/linux-dotfiles/ && ./server.sh
```
