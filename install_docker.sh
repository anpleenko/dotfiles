#!/bin/bash

sudo apt install -y docker.io

sudo systemctl enable --now docker
sudo usermod -aG docker ${USER}
