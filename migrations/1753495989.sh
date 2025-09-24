echo "Allow updating of timezone by right-clicking on the clock (or running narchos-cmd-tzupdate)"

if narchos-cmd-missing tzupdate; then
  bash "$NARCHOS_PATH/install/config/timezones.sh"
  narchos-refresh-waybar
fi
