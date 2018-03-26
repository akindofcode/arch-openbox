sudo pacman --noconfirm --needed broadcom-wl-dkms
sudo mkinitcpio -p linux

sudo pacman --noconfirm --needed wireless_tools wpa_supplicant wpa_actiond dialog gnome-keyring
