echo "Fix JetBrains font setting"

if [[ $(narchos-font-current) == JetBrains* ]]; then
  narchos-font-set "JetBrainsMono Nerd Font"
fi
