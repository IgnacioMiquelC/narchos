echo "Adding narchos version info to fastfetch"
if ! grep -q "narchos" ~/.config/fastfetch/config.jsonc; then
  cp ~/.local/share/narchos/config/fastfetch/config.jsonc ~/.config/fastfetch/
fi

