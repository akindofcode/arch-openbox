#!/bin/bash
set -e
#======================================================================================
#                                
# Author  : akindofcode
# License : Distributed under the terms of GNU GPL version 2 or later
# 
#======================================================================================

sh personalization/020-configure-git-v1.sh
sh personalization/021-pipemenus-v1.sh
sh personalization/022-personal-configuration-v1.sh
sh personalization/023-arc-theme-for-vivaldi-v1.sh

echo "################################################################"
echo "##################   personalization done !!!  #################"
echo "################################################################"