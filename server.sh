#!/bin/bash

./common.sh

sudo apt install -y maven ffmpeg gconf-service openssl dpkg-dev build-essential gnupg2 gcc \
  cmake ca-certificates fonts-liberation lsb-release xdg-utils

sudo apt install -y libasound2 libatk1.0-0 libc6 libcairo2 libcups2 libdbus-1-3 \
  libexpat1 libfontconfig1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 \
  libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 \
  libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 \
  libappindicator1 libnss3 libgbm-dev libatk-bridge2.0-0 libgtk-3-dev \
  libpcre3 libpcre3-dev zlib1g zlib1g-dev libssl-dev
