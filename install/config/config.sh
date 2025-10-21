#!/bin/bash

# Copy over narchos configs
mkdir -p ~/.config
cp -R "$NARCHOS_PATH"/config/* ~/.config/

# Use default bashrc from narchos
cp "$NARCHOS_PATH/default/bashrc" ~/.bashrc
