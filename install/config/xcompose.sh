# Set default XCompose that is triggered with CapsLock
tee ~/.XCompose >/dev/null <<EOF
include "%H/.local/share/narchos/default/xcompose"

# Identification
<Multi_key> <space> <n> : "$NARCHOS_USER_NAME"
<Multi_key> <space> <e> : "$NARCHOS_USER_EMAIL"
EOF
