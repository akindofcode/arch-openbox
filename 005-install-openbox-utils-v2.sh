#!/bin/bash
set -e
#======================================================================================
#                                
# Author  : akindofcode
# License : Distributed under the terms of GNU GPL version 2 or later
# 
#======================================================================================

# copy default openbox configuration to ~/.config
cp -R /etc/xdg/openbox ~/.config

###############################################################################################

#obconf is gtk2 and not needed if lxappearance-obconf-gtk3 installed ?? 

sudo pacman -S --noconfirm --needed obconf

sudo pacman -S --noconfirm --needed lxappearance-gtk3 lxappearance-obconf-gtk3 lightdm-gtk-greeter-settings

sudo pacman -S --noconfirm --needed noto-fonts noto-fonts-emoji

packer -S --noconfirm --noedit neofetch

packer -S --noconfirm --noedit obmenu3

packer -S --noconfirm --noedit obmenu-generator

packer -S --noconfirm --noedit yad

packer -S --noconfirm --noedit obkey

packer -S --noconfirm --noedit oblogout

packer -S --noconfirm --noedit archlabs-oblogout-themes-git

packer -S --noconfirm --noedit i3lock-color-git

###############################################################################################

#Modify obmenu-generator config files (config y schema)

#Generate static menu with icons
#obmenu-generator -s -i

# xfce-slimlock

###############################################################################################

echo "################################################################"
echo "###################    openbox utils installed  ################"
echo "################################################################"