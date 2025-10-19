#!/bin/bash

# Allow the user to change the branding for fastfetch and screensaver
mkdir -p ~/.config/narchos/branding
cp "$NARCHOS_PATH/icon.txt" ~/.config/narchos/branding/about.txt
cp "$NARCHOS_PATH/logo.txt" ~/.config/narchos/branding/screensaver.txt
