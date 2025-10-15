#!/bin/bash

if [ "$(plymouth-set-default-theme)" != "narchos" ]; then
  sudo cp -r "$HOME/.local/share/narchos/default/plymouth" /usr/share/plymouth/themes/narchos/
  sudo plymouth-set-default-theme narchos
fi
