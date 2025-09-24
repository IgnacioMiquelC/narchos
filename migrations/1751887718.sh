echo "Install Impala as new wifi selection TUI"

if narchos-cmd-missing impala; then
  narchos-pkg-add impala
  narchos-refresh-waybar
fi
