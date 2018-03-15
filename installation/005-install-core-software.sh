#!/bin/bash
set -e
#======================================================================================
#                                
# Author  : akindofcode
# License : Distributed under the terms of GNU GPL version 2 or later
# 
#======================================================================================

# installation of must-have tools
sudo pacman -S --noconfirm --needed vim gnome-terminal pcmanfm-gtk3 tint2

sudo pacman -S --noconfirm --needed dmenu feh rofi htop scrot xfce4-appfinder ntfs-3g gmrun 

sudo pacman -S --noconfirm --needed numlockx xfce4-notifyd volumeicon fish

packer -S --noconfirm --noedit polybar-git

packer -S --noconfirm --noedit screenkey-git

# add start programs to openbox ( not needed if we copy the config files later )

echo "tint2 &" >> ~/.config/openbox/autostart
echo "nitrogen --restore & #restore the background chosen with nitrogen" >> ~/.config/openbox/autostart
echo "compton -b -c --config ~/.config/compton/compton.conf &" >> ~/.config/openbox/autostart
echo "volumeicon &" >> ~/.config/openbox/autostart
echo "numlockx &" >> ~/.config/openbox/autostart

###############################################################################################
# necessary to change mime associations
# sudo pacman -S --noconfirm --needed xdg-utils

###############################################################################################

# installation of zippers and unzippers
sudo pacman -S --noconfirm --needed unace unrar zip unzip sharutils uudeview arj cabextract file-roller

###############################################################################################

echo "### core software installed ###"
