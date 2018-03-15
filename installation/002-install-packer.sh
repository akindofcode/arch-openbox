#!/bin/bash
set -e
#======================================================================================
#                                
# Author  : akindofcode
# License : Distributed under the terms of GNU GPL version 2 or later
# 
#======================================================================================

#check if wget is installed
sudo pacman -S wget --needed --noconfirm

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi packer &> /dev/null; then

# packer is already installed

else

	sudo pacman -S --noconfirm --needed grep sed bash curl pacman jshon expac

	[ -d /tmp/packer ] && rm -rf /tmp/packer

	mkdir /tmp/packer

	wget https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=packer

	mv PKGBUILD\?h\=packer /tmp/packer/PKGBUILD

	cd /tmp/packer

	makepkg -i /tmp/packer --noconfirm

	[ -d /tmp/packer ] && rm -rf /tmp/packer

	# Just checking if installation was successful
	if pacman -Qi $package &> /dev/null; then
	
	echo "###           packer has been installed                 ####"
	
	else

	echo "!!!!!!!!!  packer has NOT been installed                !!!!"
	
	fi

fi