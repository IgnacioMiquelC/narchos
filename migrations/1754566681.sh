echo "Make new Osaka Jade theme available as new default"

if [[ ! -L ~/.config/narchos/themes/osaka-jade ]]; then
  rm -rf ~/.config/narchos/themes/osaka-jade
  git -C ~/.local/share/narchos checkout -f themes/osaka-jade
  ln -nfs ~/.local/share/narchos/themes/osaka-jade ~/.config/narchos/themes/osaka-jade
fi
