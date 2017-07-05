 #!/bin/bash
 #
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	akindofcode
##################################################################################################################

# create groups autologin and nopasswdlogin
sudo groupadd -r autologin
sudo groupadd -r nopasswdlogin

# add user to autologin and nopasswdlogin groups
sudo gpasswd -a chema autologin
sudo gpasswd -a chema nopasswdlogin

# if adding to the config files doesn't work, let's try to copy the modified files

sudo cp /etc/pam.d/lightdm /etc/pam.d/lightdm.old
echo "auth        sufficient  pam_succeed_if.so user ingroup nopasswdlogin" | sudo tee --append /etc/pam.d/lightdm > /dev/null

sudo cp /etc/lightdm/lightdm.conf /etc/lightdm/lightdm.conf.old
echo '[Seat:*]' | sudo tee --append /etc/lightdm/lightdm.conf > /dev/null
echo 'autologin-user= chema' | sudo tee --append /etc/lightdm/lightdm.conf > /dev/null

# echo 'autologin-session=openbox' | sudo tee --append /etc/lightdm /lightdm.conf > /dev/null
# if commented, defaults to last selected session

echo "################################################################"
echo "#####################   Auto-login enabled  ####################"
echo "################################################################"