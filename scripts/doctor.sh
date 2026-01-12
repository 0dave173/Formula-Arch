#!/usr/bin/env bash
set -euo pipefail
need=(hyprctl waybar rofi kitty mako)
missing=0
for c in "${need[@]}"; do command -v "$c" >/dev/null 2>&1 && echo "OK: $c" || { echo "MISSING: $c"; missing=1; }; done
[[ $missing -eq 0 ]] || exit 1
