#!/bin/bash
set -e
#======================================================================================
#                                
# Author  : akindofcode
# License : Distributed under the terms of GNU GPL version 2 or later
# 
#======================================================================================

sh installation/001-install-fastest-arch-mirrors-and-update-v1.sh
sh installation/002-install-packer-for-aur-make-build-v1.sh
sh installation/003-add-needed-repos-v1.sh
sh installation/004-install-openbox-utils-v2.sh
sh installation/005-install-core-software-v2.sh
sh installation/006-install-applications-v1.sh
sh installation/007-set-auto-login-v1.sh
sh installation/008-install-fonts-v1.sh
sh installation/009-install-arc-theme-v1.sh
sh installation/010-install-sardi-icons-v3.sh
sh installation/011-install-calibre-v1.sh
sh installation/012-install-music-players-v1.sh
sh installation/013-install-zsh-v1.sh

echo "################################################################"
echo "#####################   installation done !!!  #################"
echo "################################################################"