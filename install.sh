#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -eEo pipefail

# Define narchos locations
export NARCHOS_PATH="$HOME/.local/share/narchos"
export NARCHOS_INSTALL="$NARCHOS_PATH/install"
export NARCHOS_INSTALL_LOG_FILE="/var/log/narchos-install.log"
export PATH="$NARCHOS_PATH/bin:$PATH"

# Install
source "$NARCHOS_INSTALL/helpers/all.sh"
source "$NARCHOS_INSTALL/preflight/all.sh"
source "$NARCHOS_INSTALL/packaging/all.sh"
source "$NARCHOS_INSTALL/config/all.sh"
source "$NARCHOS_INSTALL/login/all.sh"
source "$NARCHOS_INSTALL/post-install/all.sh"
