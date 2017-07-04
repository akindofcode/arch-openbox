# README #

A collection of scripts to automatize arch linux + openbox installation.

### Basepoint ###

* Install barebones arch linux via arch-amywhere iso
* WM: openbox
* DM: lightdm

### How do I get set up? ###

* git init arch-openbox
* git config --global user.name "akindofcode"
* git config --global user.email "akindofcode@gmail.com"
* sudo git config --system core.editor "vim"
* git config --global credential.helper cache
* git config --global credential.helper 'cache --timeout=18000'
* git config --global push.default simple
* cd openbox
* git remote add origin https://akindofcode@bitbucket.org/akindofcode/arch-openbox.git
* git pull origin master

### Install scripts ###

* ./001-install-fastest-mirrors-and-update-v1.sh
* ./002-install-packer-for-aur-make-build-v1.sh
* ./003-add-needed-repos-v1.sh
* ./004-openbox-utils-v2.sh
* ./005-install-core-software-v2.sh
* ./006-install-applications-v1.sh
* ./007-set-auto-login-v1.sh
* ./009-install-arc-theme-v1.sh
* ./010-install-sardi-icons-v3.sh
* ./011-install-calibre-v1.sh
* ./012-install-music-players.sh
* ./013-install-zsh-v1.sh
* ./014-configure-git-v1.sh
* ./019-pipemenus-v1.sh
* ./020-personal-configuration-v1.sh

### Things to do ###

* test and fix keybinds (add music control keys) http://llg.cubic.org/docs/sk2960.html
* theme vivaldi (arc dark)
* theme tint2 - add icons internet (add played song)
* theme dmenu
* theme lightdm ? Execute lightdm-gtk-greeter-settings - done
* locker: test i3-lock, i3lock-color, i3lock-fancy
* configure oblogout to lock computer
* edit help menu
* install zsh
* test wine + wineasio + foobar

### Other things to consider ###

* select and configure terminal 
* pywal
* wallpapers
* termite ? fix problem with close button
* gnome-terminal-transparency ?
* test thunar ?