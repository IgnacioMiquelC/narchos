#!/bin/bash

# Set install mode to online since boot.sh is used for curl installations
export NARCHOS_ONLINE_INSTALL=true

ansi_art=\
'   ▄▄      ▄         ▄        ▄                  ▄
 ▄████     █▄  ▄██████   ▄█████  ▄██████▄  ▄█    █▄   ▄█████▄   ▄████▄
███ ██    ▄██ ▀██   ██  ██   ██ ███    ▀█ ██     ██  ██▀   ▀██ ██    ██
 ██  ██   ██   ██   ██  ██   ██ ██   ▀▄█▀ ██     ██  ██     ██ ██  ▀▄█▀
 ██   ██  ██ ▄███▄▄▄██ ▄██▄▄▄██ ▀█▄      ▄███▄▄▄███▄ ██  █  ██ ██▄▄▄▄▄
 ██   ██  ██  ▀██▀▀▀██ ▀██▀▀▀▀   ██     ▀▀███▀▀▀███  ██  █  ██  ▀▀▀▀▀██
 ██    ██ ██   ██   ██ ███████▄ ▄█▀    █▄  ██    ██  ██     ██ ▄█▀▀▄ ██
██▀     █████  ██   ██  ██   ██ ██    ▄██  ██    ██  ██▄   ▄██ ██    ██
▀█       ██▀   █▀   █▀  ██   █  ▀██████▀   ██    █▀   ▀█████▀   ▀████▀ 
                        █▀   ▀              ▀'

clear
echo -e "\n$ansi_art\n"

sudo pacman -Syu --noconfirm --needed git

# Use custom repo if specified, otherwise default to IgnacioMiquelC/narchos
NARCHOS_REPO="${NARCHOS_REPO:-IgnacioMiquelC/narchos}"
NARCHOS_PATH="/usr/local/share/narchos"

echo -e "\nCloning narchos from: https://github.com/${NARCHOS_REPO}.git"
rm -rf "${NARCHOS_PATH:?}"/
git clone "https://github.com/${NARCHOS_REPO}.git" "${NARCHOS_PATH}" >/dev/null

# Use custom branch if instructed, otherwise default to master
NARCHOS_REF="${NARCHOS_REF:-master}"
if [[ $NARCHOS_REF != "master" ]]; then
  echo -e "\e[32mUsing branch: $NARCHOS_REF\e[0m"
  cd "${NARCHOS_PATH}"
  git fetch origin "${NARCHOS_REF}" && git checkout "${NARCHOS_REF}"
  cd -
fi

echo -e "\nInstallation starting..."
source "${NARCHOS_PATH}"/install.sh
