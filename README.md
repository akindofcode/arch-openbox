# README #

A collection of scripts to automatize arch linux + openbox installation.

### Basepoint ###

* Install barebones arch linux via arch-amywhere iso
* WM: openbox
* DM: lightdm

### How do I get set up? ###

* git init arch-openbox
* cd openbox
* git remote add origin https://akindofcode@bitbucket.org/akindofcode/arch-openbox.git
* git pull origin master

### Install scripts ###

* ./001-install-fastest-mirrors-and-update-v1.sh
* ./002-install-packer-for-aur-make-build-v1.sh
* ./003-add-needed-repos-v1.sh
* ./004-install-core-software-v2.sh
* ./005-openbox-utils-v2.sh
* ./006-install-applications-v1.sh
* ./010-install-sardi-icons-v3.sh
* ./011-install-calibre-v1.sh
* ./012-install-music-players.sh
* ./019-pipemenus-v1.sh
* ./020-personal-configuration-v1.sh

### Things to do ###

* test and fix keybinds (add music control keys) http://llg.cubic.org/docs/sk2960.html
* theme tint2 - add icons
* theme dmenu, rofi
* theme lightdm ? auto-login ? auto-sudo ?
* locker: test i3-lock, oblogout
* configure oblogout 
* edit help menu
* install zsh
* install qbittorrent
* test wine + wineasio + foobar

### Other things to consider ###

* select and configure terminal 
* termite ? fix problem with close button
* gnome-terminal-transparency ?
* test thunar ?