#!/usr/bin/env bash
set -euo pipefail
wall="$HOME/.local/share/formula-arch/wallpaper.png"
[[ -f "$wall" ]] || exit 0
command -v swww >/dev/null 2>&1 && swww img "$wall" --transition-type fade --transition-duration 0.6 || true
