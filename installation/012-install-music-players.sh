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

# create directories to store data
mkdir ~/.local/share/mpd
mkdir ~/Playlists

#sudo pacman -S --noconfirm --needed ncmpcpp

sudo pacman -S --noconfirm --needed deadbeef

# wine wineaiso foobar

# start mpd
mpd ~/.config/mpd/mpd.conf &

# add to autostart
echo "mpd ~/.config/mpd/mpd.conf &" >> ~/.config/openbox/autostart

echo "###  music players installed  ###"
