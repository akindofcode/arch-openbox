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

sudo pacman -Syuu
