#!/bin/bash
set -e
#======================================================================================
#                                
# Author  : akindofcode
# License : Distributed under the terms of GNU GPL version 2 or later
# 
#======================================================================================

sudo pacman -S --noconfirm --needed noto-fonts noto-fonts-emoji noto-fonts-extra

packer -S --noconfirm --noedit ttf-font-awesome-4

# siji-git

# Terminus

echo "### fonts installed ###"
