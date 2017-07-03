#!/bin/bash
set -e
#======================================================================================
#                                
# Author  : akindofcode
# License : Distributed under the terms of GNU GPL version 2 or later
# 
#======================================================================================

# installation of mpd
sudo pacman -S --noconfirm --needed mpd mpc ncmpcpp

#sudo pacman -S --noconfirm --needed ncmpcpp

sudo pacman -S --noconfirm --needed deadbeef

# wine wineaiso foobar

mpd ~/.config/mpd/mpd.conf &

echo "mpd ~/.config/mpd/mpd.conf &" >> ~/.config/openbox/autostart


echo "################################################################"
echo "##################  music players installed  ###################"
echo "################################################################"