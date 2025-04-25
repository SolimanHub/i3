#!/usr/bin/env bash

mkdir -p $HOME/.config/polybar/
ln -s $HOME/.config/i3/polybar $HOME/.config/polybar
source $HOME/.config/polybar/launch.sh
sudo chmod 777 -R /opt/
cd /opt/
git clone git@github.com:SolimanHub/scripts.git
sudo ln -s /opt/scripts/scregcp /bin/scregcp
sudo ln -s /opt/scripts/wallpaper /bin/wallpaper
cd $HOME/Imágenes/
git clone git@github.com:SolimanHub/wallpapers.git 
cd $HOME/.config/
rm -rf nvim/
git clone git@github.com:SolimanHub/nvim.git 
mkdir plugged/
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

