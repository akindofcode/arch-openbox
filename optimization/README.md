# Optimization README #

Scripts to automatize archlinux + openbox installation.

### Install scripts ###

* ./030-install-intel-microcode-updates-v1.sh

### Manual steps ###

* silent boot (https://wiki.archlinux.org/index.php/Silent_boot#Kernel_parameters)
	* Edit /etc/default/grub and append your kernel options to the GRUB_CMDLINE_LINUX_DEFAULT line:
 		* quiet loglevel=3 rd.systemd.show_status=auto rd.udev.log-priority=3 vt.global_cursor_default=0
		* execute: sudo grub-mkconfig -o /boot/grub/grub.cfg
	* remove fsck from HOOKS=(...) in /etc/mkinitcpio.conf
	* execute sudo mkinitcpio -p linux
	* (optional) let systemd-fsck check the filesystem