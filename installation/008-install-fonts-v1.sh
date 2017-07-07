#!/bin/bash
set -e
#======================================================================================
#                                
# Author  : akindofcode
# License : Distributed under the terms of GNU GPL version 2 or later
# 
#======================================================================================

sudo pacman -S --noconfirm --needed noto-fonts noto-fonts-emoji

packer -S --noconfirm --noedit ttf-font-awesome 

# siji-git

# Terminus

echo "################################################################"
echo "#####################  fonts installed  ########################"
echo "################################################################"