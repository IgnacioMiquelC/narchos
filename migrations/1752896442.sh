echo "Replace volume control GUI with a TUI"

if narchos-cmd-missing wiremix; then
  narchos-pkg-add wiremix
  narchos-pkg-drop pavucontrol
  narchos-refresh-applications
  narchos-refresh-waybar
fi
