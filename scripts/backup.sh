#!/usr/bin/env bash
set -euo pipefail

backupRoot="${HOME}/.local/share/formula-arch/backups"
stamp="$(date +"%Y%m%d_%H%M%S")"
dest="${backupRoot}/${stamp}"

mkdir -p "${dest}"

toBackup=(
  "${HOME}/.config/hypr"
  "${HOME}/.config/waybar"
  "${HOME}/.config/rofi"
  "${HOME}/.config/mako"
  "${HOME}/.config/kitty"
  "${HOME}/.config/starship.toml"
  "${HOME}/.config/gtk-3.0/gtk.css"
  "${HOME}/.config/gtk-4.0/gtk.css"
)

echo "Backing up into: ${dest}"
for p in "${toBackup[@]}"; do
  if [[ -e "${p}" ]]; then
    mkdir -p "${dest}/$(dirname "${p#"${HOME}/"}")"
    cp -a "${p}" "${dest}/${p#"${HOME}/"}"
  fi
done

echo "Backup done."

chmod +x formula-arch/scripts/*.sh
chmod +x formula-arch/scripts/ai/*.sh
chmod +x formula-arch/scripts/ai/providers/*.sh
