#!/bin/bash
set -e
#======================================================================================
#                                
# Author  : akindofcode
# License : Distributed under the terms of GNU GPL version 2 or later
# 
#======================================================================================

###############################################################################################

#obconf is gtk2 and not needed if lxappearance-obconf-gtk3 installed ?? 
# sudo pacman -S --noconfirm --needed obconf

sudo pacman -S --noconfirm --needed lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings

sudo pacman -S --noconfirm --needed lxappearance-gtk3 lxappearance-obconf-gtk3 

sudo pacman -S --noconfirm --needed neofetch

sudo pacman -S --noconfirm --needed oblogout

packer -S --noconfirm --noedit openbox-patched

packer -S --noconfirm --noedit obmenu3

packer -S --noconfirm --noedit obmenu-generator

packer -S --noconfirm --noedit yad

packer -S --noconfirm --noedit obkey

# archlabs-oblogout-themes-git is no more
# packer -S --noconfirm --noedit archlabs-oblogout-themes-git

packer -S --noconfirm --noedit i3lock-color-git

# copy default openbox configuration to ~/.config
cp -R /etc/xdg/openbox ~/.config

###############################################################################################

echo "###  openbox utils installed  ###"
