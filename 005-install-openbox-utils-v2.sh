#!/bin/bash
set -e
#======================================================================================
#                                
# Author  : akindofcode
# License : Distributed under the terms of GNU GPL version 2 or later
# 
#======================================================================================

cp -R /etc/xdg/openbox ~/.config

###############################################################################################

#obconf is gtk2 and not needed if lxappearance-obconf-gtk3 installed ?? 
#sudo pacman -S --noconfirm --needed obconf

sudo pacman -S --noconfirm --needed lxappearance-gtk3 lxappearance-obconf-gtk3 noto-fonts noto-fonts-emoji

packer -S --noconfirm --noedit neofetch

packer -S --noconfirm --noedit obmenu3

packer -S --noconfirm --noedit obmenu-generator

packer -S --noconfirm --noedit obkey

packer -S --noconfirm --noedit oblogout

packer -S --noconfirm --noedit archlabs-oblogout-themes-git

###############################################################################################

#Modify obmenu-generator config files (config y schema)

#Generate static menu with icons
obmenu-generator -s -i

# xfce-slimlock

###############################################################################################

echo "################################################################"
echo "###################    openbox utils installed  ################"
echo "################################################################"

#arc themes and icons
packer -S --noconfirm --noedit arc-gtk-theme archlabs-arch-themes-git

sh 010-icons-sardi-v3.sh

packer -S --noconfirm --noedit ttf-font-awesome breeze-snow-cursor-theme

echo "################################################################"
echo "#############  eye candy software  installed   #################"
echo "################################################################"