echo "Move narchos Package Repository after Arch core/extra/multilib and remove AUR"

sudo cp /etc/pacman.conf /etc/pacman.conf.bak
sudo sed -i '/\[narchos\]/,+2 d' /etc/pacman.conf
sudo sed -i '/\[chaotic-aur\]/,+2 d' /etc/pacman.conf
sudo bash -c 'echo -e "\n[narchos]\nSigLevel = Optional TrustAll\nServer = https://pkgs.narchos.org/\$arch" >> /etc/pacman.conf'
sudo pacman -Syu --noconfirm
