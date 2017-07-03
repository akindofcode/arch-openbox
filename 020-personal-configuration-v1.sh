 #!/bin/bash
 #
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	akindofcode
##################################################################################################################

# copy Wallpapers folder to /home
cp -R Wallpapers ~/

# copy personal configs to ~/.config
cp -R config/* ~/.config/

# copy personal configs to ~/
cp -R home/* ~/

echo "################################################################"
echo "###################   Personal Settings copied  ################"
echo "################################################################"