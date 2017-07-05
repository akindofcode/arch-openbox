#!/bin/bash
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	akindofcode
##################################################################################################################

# check for updates at https://github.com/Tiamarth/Arc-for-Vivaldi

sudo cp vivaldi/*.css /opt/vivaldi/resources/vivaldi/style

sudo cp -R vivaldi/arc /opt/vivaldi/resources/vivaldi/style

sudo cp vivaldi/browser.html /opt/vivaldi/resources/vivaldi/

echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "!!!!!!!!You need to modify the Vivaldi Theme by hand!!!!!!!!!!"
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "!Check values at https://github.com/Tiamarth/Arc-for-Vivaldi!!"
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "--------------------------------------------------------------"