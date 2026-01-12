#!/usr/bin/env bash
set -euo pipefail

repoRoot="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

"${repoRoot}/scripts/doctor.sh"
"${repoRoot}/scripts/backup.sh"

mkdir -p "${HOME}/.local/share/formula-arch"
mkdir -p "${HOME}/.local/share/formula-arch/bin"

# Wallpapers: user must add their own.
# Put your wallpaper into assets/wallpapers and we copy one.
firstWall="$(ls -1 "${repoRoot}/assets/wallpapers" 2>/dev/null | head -n 1 || true)"
if [[ -n "${firstWall}" ]]; then
  cp -f "${repoRoot}/assets/wallpapers/${firstWall}" \
    "${HOME}/.local/share/formula-arch/wallpaper.png"
fi

"${repoRoot}/scripts/apply.sh"
"${repoRoot}/scripts/reload.sh"

echo
echo "Formula-Arch installed."
echo "Tip: run RaceControl AI with:"
echo "  ~/.local/share/formula-arch/bin/racecontrol.sh"

chmod +x formula-arch/scripts/*.sh
chmod +x formula-arch/scripts/ai/*.sh
chmod +x formula-arch/scripts/ai/providers/*.sh
