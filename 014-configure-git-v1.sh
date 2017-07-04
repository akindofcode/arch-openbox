#!/bin/bash
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	akindofcode
##################################################################################################################

# Problem solving commands

# Read before using it.
# https://www.atlassian.com/git/tutorials/undoing-changes/git-reset
# git reset --hard orgin/master
# ONLY if you are very sure and no coworkers are on your github.

# Command that have helped in the past
# Force git to overwrite local files on pull - no merge
# git fetch all
# git push --set-upstream origin master
# git reset --hard orgin/master


# installing git if not installed for specific distro's

if ! location="$(type -p "git")" || [ -z "git" ]; then

	echo "#################################################"
	echo "installing git for this script to work"
	echo "#################################################"

	# check if pacman is installed
	if which pacman > /dev/null; then

		sudo pacman -S --noconfirm git
	fi
fi

#setting up git
#https://www.atlassian.com/git/tutorials/setting-up-a-repository/git-config

#git init
git config --global user.name "akindofcode"
git config --global user.email "akindofcode@gmail.com"
sudo git config --system core.editor "vim"
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=18000'
git config --global push.default simple


echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"