#!/usr/bin/env bash
set -euo pipefail

wall="${HOME}/.local/share/formula-arch/wallpaper.png"

if [[ ! -f "${wall}" ]]; then
  echo "Wallpaper missing: ${wall}"
  exit 0
fi

if command -v swww >/dev/null 2>&1; then
  swww img "${wall}" --transition-type fade --transition-duration 0.6
fi
