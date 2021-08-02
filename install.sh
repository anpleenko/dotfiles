#!/bin/bash

cp -vf JetBrainsMono/*.ttf ~/.local/share/fonts
cp -vf iosevka/*.ttf ~/.local/share/fonts
cp -vf RootUI/*.ttf ~/.local/share/fonts
cp -vf Inter/*.otf ~/.local/share/fonts
cp -vf LiberationMono/*.otf ~/.local/share/fonts

fc-cache -fv
