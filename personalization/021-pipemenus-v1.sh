#!/bin/bash
set -e
#======================================================================================
#                                
# Author  : akindofcode
# License : Distributed under the terms of GNU GPL version 2 or later
# 
#======================================================================================


# install needed packages
packer -S --noconfirm --noedit archlabs-common-git

# copy pipelines to /usr/bin
sudo cp pipelines/al-places-pipemenu /usr/bin
sudo chown root:root /usr/bin/al-places-pipemenu 

sudo cp pipelines/al-recent-files-pipemenu /usr/bin
sudo chown root:root /usr/bin/al-recent-files-pipemenu

sudo cp pipelines/al-kb-pipemenu /usr/bin
sudo chown root:root /usr/bin/al-kb-pipemenu

sudo cp pipelines/al-help-pipemenu /usr/bin
sudo chown root:root /usr/bin/al-help-pipemenu

sudo cp pipelines/al-kb /usr/bin
sudo chown root:root /usr/bin/al-kb

sudo cp pipelines/al-compositor /usr/bin
sudo chown root:root /usr/bin/al-compositor 

sudo cp pipelines/al-tint* /usr/bin
sudo chown root:root /usr/bin/al-tint*


## When all tested, replace above lines with:
#  sudo cp pipelines/al-* /usr/bin
#  sudo chown root:root /usr/bin/al-*


echo "################################################################"
echo "#################   pipelines copied to /usr/bin  ##############"
echo "################################################################"
