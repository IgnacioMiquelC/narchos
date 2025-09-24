echo "Update Waybar for new narchos menu"

if ! grep -q "" ~/.config/waybar/config.jsonc; then
  narchos-refresh-waybar
fi
