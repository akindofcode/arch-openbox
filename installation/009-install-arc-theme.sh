#!/bin/bash
set -e
#======================================================================================
#                                
# Author  : akindofcode
# License : Distributed under the terms of GNU GPL version 2 or later
# 
#======================================================================================

#arc themes and icons
packer -S --noconfirm --noedit arc-gtk-theme

# packer -S --noconfirm --noedit breeze-snow-cursor-theme	
packer -S --noconfirm --noedit breeze-default-cursor-theme

echo "### arc theme installed ###"
