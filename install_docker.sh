#!/bin/bash

curl -fsSL https://get.docker.com -o install-docker.sh
sudo sh install-docker.sh

sudo systemctl enable --now docker
sudo systemctl start docker

sudo usermod -aG docker ${USER}
