#!/bin/bash
set -e
#======================================================================================
#                                
# Author  : akindofcode
# License : Distributed under the terms of GNU GPL version 2 or later
# 
#======================================================================================

# cleaning tmp
[ -d /tmp/sardi ] && rm -rf /tmp/sardi

# if there is no hidden folder then make one
[ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"

wget -O /tmp/sardi.tar.gz "https://sourceforge.net/projects/sardi/files/latest/download?source=files"
mkdir /tmp/sardi
tar -zxf /tmp/sardi.tar.gz -C /tmp/sardi
rm /tmp/sardi.tar.gz
cp -rf /tmp/sardi/* ~/.icons/

# cleaning tmp
[ -d /tmp/sardi ] && rm -rf /tmp/sardi

echo "################################################################"
echo "###################    icons sardi done   ######################"
echo "################################################################"

# cleaning tmp
[ -d /tmp/Sardi-Extra ] && rm -rf /tmp/Sardi-Extra

# if there is no hidden folder then make one
[ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"

git clone https://github.com/erikdubois/Sardi-Extra /tmp/Sardi-Extra
find /tmp/Sardi-Extra -maxdepth 1 -type f -exec rm -rf '{}' \;

cp -rf /tmp/Sardi-Extra/* ~/.icons/

# cleaning tmp
[ -d /tmp/Sardi-Extra ] && rm -rf /tmp/Sardi-Extra

echo "################################################################"
echo "###################    icons sardi extra done  #################"
echo "################################################################"

[ -d /tmp/Sardi-Vintage ] && rm -rf /tmp/Sardi-Vintage

# if there is no hidden folder then make one
[ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"

git clone https://github.com/erikdubois/Sardi-Vintage /tmp/Sardi-Vintage
find /tmp/Sardi-Vintage -maxdepth 1 -type f -exec rm -rf '{}' \;

cp -r /tmp/Sardi-Vintage/* ~/.icons/
rm -rf /tmp/Sardi-Vintage

echo "################################################################"
echo "###################    icons sardi Vintage done  #################"
echo "################################################################"