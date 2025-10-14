#!/bin/bash

run_logged $NARCHOS_INSTALL/login/plymouth.sh
run_logged $NARCHOS_INSTALL/login/limine-snapper.sh
run_logged $NARCHOS_INSTALL/login/enable-mkinitcpio.sh
run_logged $NARCHOS_INSTALL/login/alt-bootloaders.sh
