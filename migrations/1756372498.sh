echo "Add eza themeing"

mkdir -p ~/.config/eza

if [ -f ~/.config/narchos/current/theme/eza.yml ]; then
  ln -snf ~/.config/narchos/current/theme/eza.yml ~/.config/eza/theme.yml
fi

