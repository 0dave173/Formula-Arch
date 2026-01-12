#!/usr/bin/env bash
set -euo pipefail
repoRoot="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
"$repoRoot/scripts/doctor.sh" || { echo "Install deps first (see DEPS.md)"; exit 1; }
"$repoRoot/scripts/backup.sh"
mkdir -p "$HOME/.local/share/formula-arch"
firstWall="$(ls -1 "$repoRoot/assets/wallpapers"/*.png 2>/dev/null | head -n 1 || true)"; [[ -n "$firstWall" ]] && cp -f "$firstWall" "$HOME/.local/share/formula-arch/wallpaper.png"
"$repoRoot/scripts/apply.sh"
"$repoRoot/scripts/set-icons.sh" || true
"$repoRoot/scripts/reload.sh"
echo "Formula-Arch installed."
