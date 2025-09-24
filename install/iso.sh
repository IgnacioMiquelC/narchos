# Called by narchos ISO setup before starting configurator and archinstall

source "$NARCHOS_INSTALL/preflight/set-size-vars.sh"
source "$NARCHOS_INSTALL/helpers/logo.sh"
source "$NARCHOS_INSTALL/preflight/gum.sh"
source "$NARCHOS_INSTALL/helpers/tail-log-output.sh"
source "$NARCHOS_INSTALL/helpers/trap-errors.sh"

source $NARCHOS_INSTALL/helpers/chroot.sh
source $NARCHOS_INSTALL/helpers/logo.sh
source $NARCHOS_INSTALL/helpers/gum.sh
source $NARCHOS_INSTALL/helpers/errors.sh
source $NARCHOS_INSTALL/helpers/logging.sh
source $NARCHOS_INSTALL/helpers/layout.sh
