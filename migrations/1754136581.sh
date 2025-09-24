echo "Start screensaver automatically after 1 minute and stop before locking"

if ! grep -q "narchos-launch-screensaver" ~/.config/hypr/hypridle.conf; then
  narchos-refresh-hypridle
  narchos-refresh-hyprlock
fi
