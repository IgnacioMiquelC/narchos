echo "Add UWSM env"

export NARCHOS_PATH="$HOME/.local/share/narchos"
export PATH="$NARCHOS_PATH/bin:$PATH"

mkdir -p "$HOME/.config/uwsm/"
narchos-refresh-config uwsm/env

echo -e "\n\e[31mnarchos bins have been added to PATH (and NARCHOS_PATH is now system-wide).\nYou must immediately relaunch Hyprland or most narchos cmds won't work.\nPlease run narchos > Update again after the quick relaunch is complete.\e[0m"
echo

mkdir -p ~/.local/state/narchos/migrations
gum confirm "Ready to relaunch Hyprland? (All applications will be closed)" &&
  touch ~/.local/state/narchos/migrations/1751134560.sh &&
  uwsm stop
