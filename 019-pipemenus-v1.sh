#!/bin/bash
set -e
#======================================================================================
#                                
# Author  : akindofcode
# License : Distributed under the terms of GNU GPL version 2 or later
# 
#======================================================================================

sudo cp pipelines/al-places-pipemenu /usr/bin

sudo cp pipelines/al-recent-files-pipemenu /usr/bin

sudo chown root:root /usr/bin/al-places-pipemenu 

sudo chown root:root /usr/bin/al-recent-files-pipemenu

echo "################################################################"
echo "#################   pipelines copied to /usr/bin  ##############"
echo "################################################################"