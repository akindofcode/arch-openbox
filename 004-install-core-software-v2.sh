#!/bin/bash
set -e
#======================================================================================
#                                
# Author  : akindofcode
# License : Distributed under the terms of GNU GPL version 2 or later
# 
#======================================================================================

# installation of must-have tools
sudo pacman -S --noconfirm --needed screenfetch vim git gnome-terminal pcmanfm tint2 vivaldi vivaldi-ffmpeg-codecs nitrogen sublime-text nitrogen compton ntfs-3g gmrun

#sudo pacman -S --noconfirm --needed  gksu

sudo pacman -S --noconfirm --needed dmenu

# remember to change FORCE WINDOW STYLE to GTK+
sudo pacman -S --noconfirm --needed vlc qt4

# add start programs to openbox

echo "tint2 &" >> ~/.config/openbox/autostart
echo "nitrogen --restore & #restore the background chosen with nitrogen" >> ~/.config/openbox/autostart
echo "compton -b -c --config ~/.config/compton/compton.conf &" >> ~/.config/openbox/autostart



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