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

# copy personal configs to ~/ (.Xresources, .zshrc)
cp home/.* ~/

# generate static menu with icons
obmenu-generator -s -i

# add lock script to /usr/local/bin
sudo cp lock.sh /usr/local/bin

# copy gradio stations
cp -R local/share/gradio ~/.local/share


echo "################################################################"
echo "###################   Personal Settings copied  ################"
echo "################################################################"
