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
* installation scripts
* personalization scripts
* optimization scripts

### Things to do ###

* scripts to install, personalize and optimize (all-in-one)
* test and fix keybinds (add music control keys) http://llg.cubic.org/docs/sk2960.html
* theme tint2 - add icons internet (add played song)
* theme rofi - hxttps://github.com/ARCHLabs/Archlabs-Rofi-Themes
* theme dmenu
* edit help menu
* lock script colors - arc theme

### Other things to consider ###

* select and configure terminal 
	* termite ? fix problem with close button
	* gnome-terminal-transparency ?
* test wine + wineasio + foobar
* pywal
* add more wallpapers
* test thunar ?
* script to update and clean pacman cache ? or pacman manager? -> packer -Syu --noconfirm --noedit
* xf86-video-nouveau ?
* lm_sensors lsb-release
* network-manager-applet ?
* xrandr, arandr, lxrandr
xrandr (to see available outputs)
xrandr --output VGA1 --auto --output VGA2 --off (first screen only)
xrandr --output VGA1 --off --output VGA2 --auto (second screen only)
xrandr --output VGA1 --auto --left-of VGA2 --output VGA2 --auto --primary (extended)
xrandr --output VGA1 --auto --output VGA2 --auto --same-as VGA1 (mirror)

* Polybar (https://github.com/jaagr/polybar)
Example: https://www.reddit.com/r/unixporn/comments/6l7a0s/zsh_ricing_zsh_completions/