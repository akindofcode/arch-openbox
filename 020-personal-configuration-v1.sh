 #!/bin/bash
 #
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	akindofcode
##################################################################################################################

# copy Wallpapers folder to /home
cp -R Wallpapers ~/

# copy personal configs to /home/.config
cp -R config/* ~/.config/

echo "################################################################"
echo "###################   Personal Settings copied  ################"
echo "################################################################"