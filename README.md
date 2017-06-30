# README #

A collection of scripts to automatize arch linux + openbox installation.

### Basepoint ###

* Install barebones arch linux via arch-amywhere iso
* Select WM: openbox
* Select DM: lightdm

### How do I get set up? ###

* git init arch-openbox
* cd openbox
* git remote add origin http://akindofcode@bitbucket.org/akindofcode/arch-openbox.git
* git pull origin master

### Install scripts ###

* ./001-install-fastest-mirrors-and-update-v1.sh
* ./002-install-packer-for-aur-make-build-v1.sh
* ./003-add-needed-repos-v1.sh
* ./004-install-core-software-v2.sh
* ./005-openbox-utils-v2.sh
* ./006-install-applications-v1.sh
* ./010-install-sardi-icons-v3.sh
* ./019-pipemenus-v1.sh
* ./020-personal-configuration-v1.sh

### Things to do ###

* test and fix keybinds
* fix tint2 - icons
* theme dmenu, rofi
* theme lightdm
* locker: test i3-lock
* configure oblogout 
* edit help menu
* music player

### Other things to consider ###

* select and configure terminal
* gnome-terminal-transparency ?
* fix termite closing