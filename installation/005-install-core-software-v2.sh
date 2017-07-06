#!/bin/bash
set -e
#======================================================================================
#                                
# Author  : akindofcode
# License : Distributed under the terms of GNU GPL version 2 or later
# 
#======================================================================================

# installation of must-have tools
sudo pacman -S --noconfirm --needed vim git gnome-terminal pcmanfm-gtk3 tint2 qbittorrent

sudo pacman -S --noconfirm --needed vivaldi vivaldi-ffmpeg-codecs nitrogen sublime-text compton 

sudo pacman -S --noconfirm --needed dmenu feh rofi htop scrot xfce4-appfinder ntfs-3g gmrun 

sudo pacman -S --noconfirm --needed numlockx xfce4-notifyd volumeicon

packer -S --noconfirm --noedit screenkey-git

#sudo pacman -S --noconfirm --needed  gksu screenfetch

# remember to change FORCE WINDOW STYLE in VLC to GTK+
sudo pacman -S --noconfirm --needed vlc qt4 

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


echo "################################################################"
echo "###################    core software installed  ################"
echo "################################################################"