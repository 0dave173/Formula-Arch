#!/usr/bin/env bash
set -euo pipefail

repoRoot="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

"${repoRoot}/scripts/doctor.sh"
"${repoRoot}/scripts/backup.sh"

mkdir -p "${HOME}/.local/share/formula-arch"
mkdir -p "${HOME}/.local/share/formula-arch/bin"

# Copy a wallpaper (first png in assets/wallpapers)
firstWall="$(ls -1 "${repoRoot}/assets/wallpapers"/*.png 2>/dev/null | head -n 1 || true)"
if [[ -n "${firstWall}" ]]; then
  cp -f "${firstWall}" "${HOME}/.local/share/formula-arch/wallpaper.png"
fi

"${repoRoot}/scripts/apply.sh"
"${repoRoot}/scripts/reload.sh"

echo
echo "Formula-Arch installed."
echo "RaceControl AI:"
echo "  echo \"help me set up bluetooth\" | ~/.local/share/formula-arch/bin/racecontrol.sh"
