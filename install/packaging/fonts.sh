#!/bin/bash

# narchos logo in a font for Waybar use
mkdir -p ~/.local/share/fonts
cp "$NARCHOS_PATH/config/narchos.ttf" ~/.local/share/fonts/
fc-cache
