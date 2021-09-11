#!/bin/bash

curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo npm install -g yarn

npm config set init.author.name "Alexander Anpleenko"
npm config set init.author.email "avanpleenko@gmail.com"
npm config set init.license "MIT"
npm config set init.version "0.0.1"
npm config set loglevel="error"
