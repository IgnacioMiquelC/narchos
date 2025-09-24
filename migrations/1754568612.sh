echo "Update Waybar config to fix path issue with update-available icon click"

if grep -q "alacritty --class narchos --title narchos -e narchos-update" ~/.config/waybar/config.jsonc; then
  sed -i 's|\("on-click": "alacritty --class narchos --title narchos -e \)narchos-update"|\1narchos-update"|' ~/.config/waybar/config.jsonc
  narchos-restart-waybar
fi
