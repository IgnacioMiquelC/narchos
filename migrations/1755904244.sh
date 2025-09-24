echo "Update fastfetch config with new narchos logo"

narchos-refresh-config fastfetch/config.jsonc

mkdir -p ~/.config/narchos/branding
cp $NARCHOS_PATH/icon.txt ~/.config/narchos/branding/about.txt
