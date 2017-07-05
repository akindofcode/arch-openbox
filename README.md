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
* ./012-install-music-players-v1.sh
* ./013-install-zsh-v1.sh

* ./020-configure-git-v1.sh
* ./021-pipemenus-v1.sh
* ./022-personal-configuration-v1.sh
* ./023-arc-theme-for-vivaldi-v1.sh

* ./030-install-intel-microcode-updates-v1.sh

### Manual steps ###

* silent boot (https://wiki.archlinux.org/index.php/Silent_boot#Kernel_parameters)
Edit /etc/default/grub and append your kernel options to the GRUB_CMDLINE_LINUX_DEFAULT line:
 	quiet loglevel=3 rd.systemd.show_status=auto rd.udev.log-priority=3
Execute: sudo grub-mkconfig -o /boot/grub/grub.cfg
* Vivaldi Arc Theme
Colors: #2f343f, #d3dae3, #5294e2, #383c4a, [ ], [x], 2px
* sudo lightdm-gtk-greeter-settings
Arc Crimson Dark, Noto Sans Regular 10
* configure zsh

### Things to do ###

* test and fix keybinds (add music control keys) http://llg.cubic.org/docs/sk2960.html
* theme tint2 - add icons internet (add played song)
* theme rofi - https://github.com/ARCHLabs/Archlabs-Rofi-Themes
* theme dmenu
* edit help menu
* lock script colors - arc theme

### Other things to consider ###

* select and configure terminal 
* test wine + wineasio + foobar
* pywal
* add more wallpapers
* termite ? fix problem with close button
* gnome-terminal-transparency ?
* test thunar ?