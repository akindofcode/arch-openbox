#!/bin/bash
set -e
#======================================================================================
#                                
# Author  : akindofcode
# License : Distributed under the terms of GNU GPL version 2 or later
# 
#======================================================================================

# installation of calibre
sudo pacman -S --noconfirm --needed calibre

# installation of qt5 config tool
sudo pacman -S --noconfirm --needed qt5ct
packer -S --noconfirm --noedit qt5-styleplugins

# add environment variable
sudo echo "QT_QPA_PLATFORMTHEME=qt5ct" >> /etc/environment

echo "################################################################"
echo "#######################  calibre  installed  ###################"
echo "##################### Please restart computer ##################"
echo "################################################################"