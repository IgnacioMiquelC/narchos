echo "Install swayOSD to show volume status"

if narchos-cmd-missing swayosd-server; then
  narchos-pkg-add swayosd
  setsid uwsm app -- swayosd-server &>/dev/null &
fi
