echo "Replace wofi with walker as the default launcher"

if narchos-cmd-missing walker; then
  narchos-pkg-add walker-bin libqalculate

  narchos-pkg-drop wofi
  rm -rf ~/.config/wofi

  mkdir -p ~/.config/walker
  cp -r ~/.local/share/narchos/config/walker/* ~/.config/walker/
fi
