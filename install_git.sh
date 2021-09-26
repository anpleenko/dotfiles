#!/bin/bash

wget -O git-lfs.tar.gz https://github.com/git-lfs/git-lfs/releases/download/v2.13.3/git-lfs-linux-amd64-v2.13.3.tar.gz
tar xvzf git-lfs.tar.gz --one-top-level=git-lfs
sudo ./git-lfs/install.sh
