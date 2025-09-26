# Set links for Nautilius action icons
sudo ln -snf /usr/share/icons/Adwaita/symbolic/actions/go-previous-symbolic.svg /usr/share/icons/Yaru/scalable/actions/go-previous-symbolic.svg
sudo ln -snf /usr/share/icons/Adwaita/symbolic/actions/go-next-symbolic.svg /usr/share/icons/Yaru/scalable/actions/go-next-symbolic.svg

# Setup theme links
mkdir -p ~/.config/narchos/themes
for f in ~/.local/share/narchos/themes/*; do ln -nfs "$f" ~/.config/narchos/themes/; done

# Set initial theme
mkdir -p ~/.config/narchos/current
ln -snf ~/.config/narchos/themes/matte-black ~/.config/narchos/current/theme
ln -snf ~/.config/narchos/current/theme/backgrounds/0-ship-at-sea.jpg ~/.config/narchos/current/background

# Set specific app links for current theme
ln -snf ~/.config/narchos/current/theme/neovim.lua ~/.config/nvim/lua/plugins/theme.lua

mkdir -p ~/.config/btop/themes
ln -snf ~/.config/narchos/current/theme/btop.theme ~/.config/btop/themes/current.theme

mkdir -p ~/.config/mako
ln -snf ~/.config/narchos/current/theme/mako.ini ~/.config/mako/config

mkdir -p ~/.config/eza
ln -snf ~/.config/narchos/current/theme/eza.yml ~/.config/eza/theme.yml

# Add managed policy directories for Brave theme changes
sudo mkdir -p /etc/brave/policies/managed
sudo chmod a+rw /etc/brave/policies/managed
