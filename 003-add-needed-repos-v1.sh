 #!/bin/bash
 #
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	akindofcode
##################################################################################################################

#sudo sed -i /etc/pacman.conf -e '$a\\n[herecura]\nServer = http://repo.herecura.be/herecura/x86_64\n\n[repo-ck]\nServer = http://repo-ck.com/$arch'

sudo sed -i /etc/pacman.conf -e '$a\\n[herecura]\nServer = http://repo.herecura.be/$repo/$arch'

#sudo pacman-key -r 5EE46C4C

#sudo pacman-key --lsign-key 5EE46C4C

sudo pacman -Syuu