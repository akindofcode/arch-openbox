 #!/bin/bash
 #
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	akindofcode
##################################################################################################################

# backup pacman.conf

sudo cp /etc/pacman.conf /etc/pacman.conf.old

# add herecura repo (vivaldi)

sudo sed -i /etc/pacman.conf -e '$a\\n[herecura]\nServer = http://repo.herecura.be/$repo/$arch'

# add sublime text repo

curl -O https://download.sublimetext.com/sublimehq-pub.gpg && sudo pacman-key --add sublimehq-pub.gpg && sudo pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg

# Stable
# echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf
# Dev
echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/dev/x86_64" | sudo tee -a /etc/pacman.conf

sudo pacman -Syuu
