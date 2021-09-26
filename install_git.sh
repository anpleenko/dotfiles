#!/bin/bash

sudo add-apt-repository ppa:git-core/ppa -y
sudo apt update
sudo apt install -y git

curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
sudo apt -y install git-lfs
git lfs install


# cd /tmp
# mkdir git-lfs
# cd git-lfs
# wget -O git-lfs.tar.gz https://github.com/git-lfs/git-lfs/releases/download/v2.13.3/git-lfs-linux-amd64-v2.13.3.tar.gz
# tar xvzf git-lfs.tar.gz
# sudo ./install.sh
