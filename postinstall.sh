#!/bin/bash

echo allure v$(allure --version)
git --version
git-lfs --version
tmux -V
java --version
python --version
pip --version
docker --version
docker-compose --version
echo npm v$(npm --version)
echo yarn v$(yarn --version)
echo node $(node --version)
echo nvm v$(nvm --version)
