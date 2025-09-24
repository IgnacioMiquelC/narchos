echo "Add Catppuccin Latte light theme"

if [[ ! -L "~/.config/narchos/themes/catppuccin-latte" ]]; then
  ln -snf ~/.local/share/narchos/themes/catppuccin-latte ~/.config/narchos/themes/
fi
