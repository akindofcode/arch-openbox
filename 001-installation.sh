#!/bin/bash
set -e
#======================================================================================
#                                
# Author  : akindofcode
# License : Distributed under the terms of GNU GPL version 2 or later
# 
#======================================================================================

sh installation/001-install-fastest-arch-mirrors-and-update.sh
sh installation/002-install-packer-for-aur-make-build.sh
sh installation/003-add-needed-repos.sh
sh installation/004-install-openbox-utils.sh
sh installation/005-install-core-software.sh
sh installation/006-install-applications.sh
sh installation/007-set-auto-login.sh
sh installation/008-install-fonts.sh
sh installation/009-install-arc-theme.sh
sh installation/010-install-sardi-icons.sh
sh installation/011-install-calibre.sh
sh installation/012-install-music-players.sh
sh installation/013-install-zsh.sh

echo "################################################################"
echo "#####################   installation done !!!  #################"
echo "################################################################"