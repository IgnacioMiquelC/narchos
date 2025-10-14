#!/bin/bash

# Install all base packages
mapfile -t packages < <(grep -v '^#' "$NARCHOS_INSTALL/narchos-base.packages" | grep -v '^$')
sudo pacman -S --noconfirm --needed "${packages[@]}"
