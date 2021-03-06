# README #

A collection of scripts to automatize archlinux + openbox installation.

### Basepoint ###

* Install barebones archlinux via arch-anywhere or feliz iso
* WM: openbox
* DM: lightdm

### How do I get set up? ###

* import this repository
	git clone https://github.com/akindofcode/arch-openbox
* execute 001-installation.sh
* execute 002-personalization.sh
* execute 003-optimization.sh
* execute 004-update-all.sh

### Things to do after installation on real hardware###

* test and fix keybinds (add music and extra control keys) http://llg.cubic.org/docs/sk2960.html (on real hardware)
* install nvidia drivers: xf86-video-nouveau ?
* xrandr, arandr, lxrandr (add keybinds)
	* xrandr (to see available outputs)
	* xrandr --output VGA1 --auto --output VGA2 --off (first screen only)
	* xrandr --output VGA1 --off --output VGA2 --auto (second screen only)
	* xrandr --output VGA1 --auto --left-of VGA2 --output VGA2 --auto --primary (extended)
	* xrandr --output VGA1 --auto --output VGA2 --auto --same-as VGA1 (mirror)

### Other things to consider ###

* fish shell (desactivar zsh y añadir exec fish to .bashrc)
* mpc: add played song to tint2 or conky (or polybar)
* theme rofi - https://github.com/ARCHLabs/Archlabs-Rofi-Themes
* theme dmenu ? 
* add more wallpapers
* select and configure terminal 
	* termite ? fix problem with close button
	* gnome-terminal-transparency ?
* lm_sensors lsb-release
* lock.sh script colors - arc theme
* configure and learn oh-my-zsh (https://github.com/robbyrussell/oh-my-zsh)

### Applications to test ###

* fish shell
* cli-visualizer
* Thunar
* wine + wineasio + foobar
* Polybar (https://github.com/jaagr/polybar)
	* Example: https://www.reddit.com/r/unixporn/comments/6l7a0s/zsh_ricing_zsh_completions/
* pywal
* Terminology
* Weechat (https://wiki.archlinux.org/index.php/WeeChat)
* irssi (https://wiki.archlinux.org/index.php/irssi)
