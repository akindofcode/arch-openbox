#!/bin/bash
rm -f /etc/sudoers.d/g_wheel
rm -R /etc/systemd/system/getty@tty1.service.d
rm /etc/systemd/system/default.target
rm /usr/share/applications/calamares.desktop
rm /etc/skel/.config/autostart/calamares.desktop
rm -rf /etc/calamares
rm -rf /usr/lib/calamares
rm -rf /abif-master
rm -f /etc/polkit-1/rules.d/49-nopasswd_global.rules
rm -f /etc/skel/.config/autostart/calamares.desktop
sed -i '/launcher_item_app = \/usr\/share\/applications\/calamares.desktop/d' /etc/skel/.config/tint2/tint2rc
systemctl disable pacman-init.service choose-mirror.service
rm -r /etc/systemd/system/{choose-mirror.service,pacman-init.service,etc-pacman.d-gnupg.mount,getty@tty1.service.d}
rm /etc/systemd/scripts/choose-mirror
rm /root/{.automated_script.sh,.zlogin}
rm /etc/mkinitcpio-archiso.conf
rm -r /etc/initcpio