echo "Add new matte black theme"

if [[ ! -L "~/.config/narchos/themes/matte-black" ]]; then
  ln -snf ~/.local/share/narchos/themes/matte-black ~/.config/narchos/themes/
fi
