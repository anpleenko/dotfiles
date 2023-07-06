### Install requirements

```bash
sudo apt install curl
```

### Install configs for Desktop (Ubuntu 22.04)

```bash
mkdir -p ~/.temp/dotfiles
curl -o dotfiles.tgz -Ls https://github.com/anpleenko/linux-dotfiles/releases/download/v06-07-2023-13h-27m-44s/dotfiles.tgz
sudo tar -zxvf dotfiles.tgz -C ~/.temp/dotfiles
cd ~/.temp/dotfiles
./desktop.sh
rm -rf ~/.temp/dotfiles
```

### Install configs for Server (Ubuntu 22.04)

```bash
mkdir -p ~/.temp/dotfiles
curl -o dotfiles.tgz -Ls https://github.com/anpleenko/linux-dotfiles/releases/download/v06-07-2023-13h-27m-44s/dotfiles.tgz
sudo tar -zxvf dotfiles.tgz -C ~/.temp/dotfiles
cd ~/.temp/dotfiles
./server.sh
rm -rf ~/.temp/dotfiles
```

### install nvm

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
nvm install 16
npm install -g npm
npm install -g yarn
```
