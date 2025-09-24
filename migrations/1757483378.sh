echo "6Ghz Wi-Fi + Intel graphics acceleration for existing installations"

bash "$NARCHOS_PATH/install/config/hardware/set-wireless-regdom.sh"
bash "$NARCHOS_PATH/install/config/hardware/intel.sh"
