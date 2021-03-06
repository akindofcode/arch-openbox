#!/bin/bash
set -e
#======================================================================================
#                                
# Author  : akindofcode
# License : Distributed under the terms of GNU GPL version 2 or later
# 
#======================================================================================

#software from 'normal' repositories

#packer -S --noconfirm --noedit gradio

#sudo pacman -S --noconfirm --needed qbittorrent
sudo pacman -S --noconfirm --needed vivaldi vivaldi-ffmpeg-codecs nitrogen sublime-text compton 

# remember to change FORCE WINDOW STYLE in VLC to GTK+
sudo pacman -S --noconfirm --needed vlc qt4 

#sudo pacman -S --noconfirm --needed archey3 baobab bleachbit catfish clementine conky curl
#sudo pacman -S --noconfirm --needed darktable dconf-editor
#sudo pacman -S --noconfirm --needed dmidecode 
#sudo pacman -S --noconfirm --needed evince evolution filezilla firefox
#sudo pacman -S --noconfirm --needed galculator geary gimp git gksu glances gnome-disk-utility 
#sudo pacman -S --noconfirm --needed gnome-font-viewer gnome-screenshot gnome-system-monitor 
#sudo pacman -S --noconfirm --needed gnome-terminal
#sudo pacman -S --noconfirm --needed gparted gpick grsync
#sudo pacman -S --noconfirm --needed hardinfo hddtemp hexchat htop 
#sudo pacman -S --noconfirm --needed inkscape inxi lm_sensors lsb-release meld mlocate mpv
#sudo pacman -S --noconfirm --needed nemo net-tools notify-osd numlockx openshot pinta plank polkit-gnome 
#sudo pacman -S --noconfirm --needed redshift ristretto sane screenfetch scrot shotwell 
#sudo pacman -S --noconfirm --needed simple-scan simplescreenrecorder smplayer sysstat 
#sudo pacman -S --noconfirm --needed terminator thunar transmission-cli transmission-gtk tumbler
#sudo pacman -S --noconfirm --needed variety vlc vnstat wget unclutter  


#sudo systemctl enable vnstat
#sudo systemctl start vnstat

echo "### applications installed ###"
