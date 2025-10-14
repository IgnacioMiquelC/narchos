#!/bin/bash

source $NARCHOS_INSTALL/preflight/guard.sh
source $NARCHOS_INSTALL/preflight/begin.sh
run_logged $NARCHOS_INSTALL/preflight/show-env.sh
run_logged $NARCHOS_INSTALL/preflight/pacman.sh
run_logged $NARCHOS_INSTALL/preflight/first-run-mode.sh
run_logged $NARCHOS_INSTALL/preflight/disable-mkinitcpio.sh
