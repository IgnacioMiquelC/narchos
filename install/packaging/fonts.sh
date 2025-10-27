#!/bin/bash

# narchos logo in a font for Waybar use
mkdir -p /usr/local/share/fonts
cp "$NARCHOS_PATH/config/narchos.ttf" /usr/local/share/fonts/
fc-cache
