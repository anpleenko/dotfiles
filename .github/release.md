### Install requirements

```bash
sudo apt install curl
```

### Install configs for Desktop (Ubuntu 22.04)

```bash
mkdir -p ~/dotfiles
cd ~/dotfiles
curl -o dotfiles.tgz -Ls https://github.com/anpleenko/linux-dotfiles/releases/download/<tag>/dotfiles.tgz
sudo tar -zxvf dotfiles.tgz -C .
./desktop.sh
rm -rf ~/dotfiles
```

### Install configs for Server (Ubuntu 22.04)

```bash
mkdir -p ~/dotfiles
cd ~/dotfiles
curl -o dotfiles.tgz -Ls https://github.com/anpleenko/linux-dotfiles/releases/download/<tag>/dotfiles.tgz
sudo tar -zxvf dotfiles.tgz -C .
./server.sh
rm -rf ~/dotfiles
```

### install nvm

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
nvm install 16
npm install -g npm
npm install -g yarn
```
