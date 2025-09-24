echo "Update and restart Walker to resolve stuck narchos menu"

sudo pacman -Syu --noconfirm walker-bin
narchos-restart-walker
