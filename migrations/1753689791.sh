echo "Add the new ristretto theme as an option"

if [[ ! -L ~/.config/narchos/themes/ristretto ]]; then
  ln -nfs ~/.local/share/narchos/themes/ristretto ~/.config/narchos/themes/
fi
