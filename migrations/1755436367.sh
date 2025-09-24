echo "Add minimal starship prompt to terminal"

if narchos-cmd-missing starship; then
  narchos-pkg-add starship
  cp $NARCHOS_PATH/config/starship.toml ~/.config/starship.toml
fi
