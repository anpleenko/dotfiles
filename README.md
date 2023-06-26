### Install configs for Desktop (Ubuntu 22.04)

```bash
cd /tmp
mkdir dotfiles
curl -o dotfiles.tgz -Ls https://github.com/anpleenko/linux-dotfiles/releases/download/v26-06-2023-07h-12m-12s/dotfiles.tgz
sudo tar -zxvf dotfiles.tgz -C /tmp/dotfiles
cd /tmp/dotfiles
./desktop.sh
```

### Install configs for Server (Ubuntu 22.04)

```bash
cd /tmp
mkdir dotfiles
curl -o dotfiles.tgz -Ls https://github.com/anpleenko/linux-dotfiles/releases/download/v26-06-2023-07h-12m-12s/dotfiles.tgz
sudo tar -zxvf dotfiles.tgz -C /tmp/dotfiles
cd /tmp/dotfiles
./server.sh
```
