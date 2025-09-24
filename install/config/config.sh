# Copy over narchos configs
mkdir -p ~/.config
cp -R ~/.local/share/narchos/config/* ~/.config/

# Use default bashrc from narchos
cp ~/.local/share/narchos/default/bashrc ~/.bashrc
