sudo pacman --noconfirm --noedit broadcom-wl-dkms
sudo mkinitcpio -p linux

sudo pacman --noconfitm --noedit wireless_tools wpa_supplicant wpa_actiond dialog gnome-keyring
