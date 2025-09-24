echo "Add narchos Package Repository"

narchos-refresh-pacman-mirrorlist

if ! grep -q "narchos" /etc/pacman.conf; then
  sudo sed -i '/^\[core\]/i [narchos]\nSigLevel = Optional TrustAll\nServer = https:\/\/pkgs.narchos.org\/$arch\n' /etc/pacman.conf
  sudo systemctl restart systemd-timesyncd
  sudo pacman -Syu --noconfirm
fi
