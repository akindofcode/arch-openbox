#!/bin/bash
set -e
#======================================================================================
#                                
# Author  : akindofcode
# License : Distributed under the terms of GNU GPL version 2 or later
# 
#======================================================================================

echo "################################################################"
echo "####                Installing reflector                     ###"
echo "################################################################"

# installing refector to test wich servers are fastest
sudo pacman -S --noconfirm --needed reflector

echo "################################################################"
echo "####              finding fastest servers                    ###"
echo "################################################################"

sudo reflector -l 100 -f 50 --sort rate --threads 5 --verbose --save /tmp/mirrorlist.new && rankmirrors -n 0 /tmp/mirrorlist.new > /tmp/mirrorlist && sudo cp /tmp/mirrorlist /etc/pacman.d

echo "################################################################"
echo "####                adding fastest servers 			 	   ###"
echo "################################################################"

cat /etc/pacman.d/mirrorlist

echo "################################################################"
echo "####             Checking for possible updates              ####"
echo "################################################################"

sudo pacman -Syyu --noconfirm

echo "################################################################"
echo "#####                 System up to date                     ####"
echo "################################################################"