#!/bin/bash

cp -v ./.config/rofi/config ~/.config/rofi/config
cp -v ./.config/i3/config ~/.config/i3/config
cp -v ./.config/ranger/ ~/.config/ranger/*
cp -v ./.config/polybar/ ~/.config/polybar/*
cp -v -r ./Scripts/ ~/Desktop/lockscreen.sh
cp -v -r ./Scripts/ ~/Desktop/wallpaperScript.sh
cp -r ./zsh-themes ~/.oh-my-zsh/themes
cp -v ./.Xresources ~/.Xresources
cp -v ./.zshrc ~/.zshrc
cp -v ./.xinitrc ~/.xinitrc
cp -v ./.vimrc ~/.vimrc