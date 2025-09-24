echo "Replace buggy native Zoom client with webapp"

if narchos-pkg-present zoom; then
  narchos-pkg-drop zoom
  narchos-webapp-install "Zoom" https://app.zoom.us/wc/home https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/zoom.png
fi
