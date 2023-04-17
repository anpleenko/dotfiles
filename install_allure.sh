#!/bin/bash

curl -o allure-2.14.0.tgz -Ls https://github.com/allure-framework/allure2/releases/download/2.14.0/allure-2.14.0.tgz

sudo tar -zxvf allure-2.14.0.tgz -C /opt/
sudo ln -s /opt/allure-2.14.0/bin/allure /usr/bin/allure

rm allure-2.14.0.tgz
