#!/usr/bin/env bash
set -euo pipefail
root="$HOME/.local/share/formula-arch/backups"; stamp="$(date +%Y%m%d_%H%M%S)"; dest="$root/$stamp"; mkdir -p "$dest"
for p in "$HOME/.config/hypr" "$HOME/.config/waybar" "$HOME/.config/rofi" "$HOME/.config/mako" "$HOME/.config/kitty"; do [[ -e "$p" ]] || continue; mkdir -p "$dest/$(dirname "${p#$HOME/}")"; cp -a "$p" "$dest/${p#$HOME/}"; done
echo "Backup: $dest"
