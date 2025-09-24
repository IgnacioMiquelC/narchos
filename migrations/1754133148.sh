echo "Update Waybar CSS to dim unused workspaces"

if ! grep -q "#workspaces button\.empty" ~/.config/waybar/style.css; then
  narchos-refresh-config waybar/style.css
  narchos-restart-waybar
fi
