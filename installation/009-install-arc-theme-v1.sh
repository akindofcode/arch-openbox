#!/bin/bash
set -e
#======================================================================================
#                                
# Author  : akindofcode
# License : Distributed under the terms of GNU GPL version 2 or later
# 
#======================================================================================

#arc themes and icons
packer -S --noconfirm --noedit arc-gtk-theme archlabs-arch-themes-git

## packer -S --noconfirm --noedit breeze-snow-cursor-theme
packer -S --noconfirm --noedit default-snow-cursor-theme

echo "################################################################"
echo "###################  arc themes installed  #####################"
echo "################################################################"