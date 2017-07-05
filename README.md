# README #

A collection of scripts to automatize archlinux + openbox installation.

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

### Manual steps ###

* silent boot (https://wiki.archlinux.org/index.php/Silent_boot#Kernel_parameters)
Edit /etc/default/grub and append your kernel options to the GRUB_CMDLINE_LINUX_DEFAULT line:
 	quiet loglevel=3 rd.systemd.show_status=auto rd.udev.log-priority=3
Execute: sudo grub-mkconfig -o /boot/grub/grub.cfg
* Vivaldi Arc Theme
Colors: #2f343f, #d3dae3, #5294e2, #383c4a, [ ], [x], 2px
* sudo lightdm-gtk-greeter-settings
Arc Crimson Dark, Noto Sans Regular 10

### Things to do ###

* test and fix keybinds (add music control keys) http://llg.cubic.org/docs/sk2960.html
* theme tint2 - add icons internet (add played song)
* theme rofi - https://github.com/ARCHLabs/Archlabs-Rofi-Themes
* theme dmenu
* edit help menu
* lock script colors - arc theme

### Configure zsh ###
* configure zsh
* plugins: git colored-man-pages themes

### Other things to consider ###

* select and configure terminal 
* test wine + wineasio + foobar
* pywal
* add more wallpapers
* termite ? fix problem with close button
* gnome-terminal-transparency ?
* test thunar ?
* scritp to update and clean pacman cache ? or pacman manager? -> packer -Syu
* xf86-video-nouveau ?
* lm_sensors lsb-release
* network-manager-applet
* xrandr, arandr, lxrandr
xrandr (to see available outputs)
xrandr --output VGA1 --auto --output VGA2 --off (first screen only)
xrandr --output VGA1 --off --output VGA2 --auto (second screen only)
xrandr --output VGA1 --auto --left-of VGA2 --output VGA2 --auto --primary (extended)
xrandr --output VGA1 --auto --output VGA2 --auto --same-as VGA1 (mirror)