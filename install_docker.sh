#!/bin/bash

curl -fsSL https://get.docker.com -o install-docker.sh && sudo sh install-docker.sh

sudo systemctl enable --now docker
sudo usermod -aG docker ${USER}

sudo curl -L "https://github.com/docker/compose/releases/download/v2.23.3/docker-compose-linux-x86_64" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
