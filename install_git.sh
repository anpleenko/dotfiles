#!/bin/bash

cd /tmp
mkdir git-lfs
cd git-lfs
wget -O git-lfs.tar.gz https://github.com/git-lfs/git-lfs/releases/download/v2.13.3/git-lfs-linux-amd64-v2.13.3.tar.gz
tar xvzf git-lfs.tar.gz
sudo ./install.sh
