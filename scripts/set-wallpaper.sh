#!/usr/bin/env bash
set -euo pipefail

wall="${HOME}/.local/share/formula-arch/wallpaper.png"
fallback="${HOME}/.local/share/formula-arch/wallpaper_fallback.png"

# You must provide a wallpaper file. We pick the first if exists.
if [[ -f "${wall}" ]]; then
  chosen="${wall}"
elif [[ -f "${fallback}" ]]; then
  chosen="${fallback}"
else
  echo "No wallpaper found in ~/.local/share/formula-arch/"
  exit 0
fi

if command -v swww >/dev/null 2>&1; then
  swww img "${chosen}" --transition-type fade --transition-duration 0.6
fi

chmod +x formula-arch/scripts/*.sh
chmod +x formula-arch/scripts/ai/*.sh
chmod +x formula-arch/scripts/ai/providers/*.sh
