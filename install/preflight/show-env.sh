# Show installation environment variables
gum log --level info "Installation Environment:"

env | grep -E "^(NARCHOS_CHROOT_INSTALL|NARCHOS_ONLINE_INSTALL|NARCHOS_USER_NAME|NARCHOS_USER_EMAIL|USER|HOME|NARCHOS_REPO|NARCHOS_REF|NARCHOS_PATH)=" | sort | while IFS= read -r var; do
  gum log --level info "  $var"
done
