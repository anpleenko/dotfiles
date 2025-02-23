#!/bin/bash

./common.sh

sudo timedatectl set-timezone Europe/Moscow

# sudo apt install -y \
#   build-essential \
#   ca-certificates \
#   cmake \
#   dpkg-dev \
#   fonts-liberation \
#   gcc \
#   gconf-service \
#   gnupg2 \
#   lsb-release \
#   openssl \
#   xdg-utils

./postinstall.sh
