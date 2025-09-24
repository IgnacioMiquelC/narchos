echo "Switch to narchos Chromium for synchronized theme switching"

if narchos-cmd-present chromium; then
  set_theme_colors() {
    if [[ -f ~/.config/narchos/current/theme/chromium.theme ]]; then
      chromium --no-startup-window --set-theme-color="$(<~/.config/narchos/current/theme/chromium.theme)"
    else
      # Use a default, neutral grey if theme doesn't have a color
      chromium --no-startup-window --set-theme-color="28,32,39"
    fi
  }

  narchos-pkg-drop chromium
  narchos-pkg-add narchos-chromium

  if pgrep -x chromium; then
    if gum confirm "Chromium must be restarted. Ready?"; then
      pkill -x chromium
      set_theme_colors
    fi
  else
    set_theme_colors
  fi
fi
