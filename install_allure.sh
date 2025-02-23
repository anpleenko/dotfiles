#!/bin/bash

wget https://github.com/allure-framework/allure2/releases/download/2.32.2/allure-2.32.2.tgz

sudo tar -zxvf allure-2.32.2.tgz -C /opt/
sudo ln -s /opt/allure-2.32.2/bin/allure /usr/bin/allure
