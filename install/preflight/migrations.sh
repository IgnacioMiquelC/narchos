NARCHOS_MIGRATIONS_STATE_PATH=~/.local/state/narchos/migrations
mkdir -p $NARCHOS_MIGRATIONS_STATE_PATH

for file in ~/.local/share/narchos/migrations/*.sh; do
  touch "$NARCHOS_MIGRATIONS_STATE_PATH/$(basename "$file")"
done
