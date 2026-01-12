#!/usr/bin/env bash
set -euo pipefail

rm -rf "${HOME}/.config/hypr"
rm -rf "${HOME}/.config/waybar"
rm -rf "${HOME}/.config/rofi"
rm -rf "${HOME}/.config/mako"
rm -rf "${HOME}/.config/kitty"
rm -f "${HOME}/.config/starship.toml"

rm -rf "${HOME}/.config/gtk-3.0/window-buttons"
rm -rf "${HOME}/.config/gtk-4.0/window-buttons"
rm -f "${HOME}/.config/gtk-3.0/gtk.css"
rm -f "${HOME}/.config/gtk-4.0/gtk.css"

rm -rf "${HOME}/.local/share/formula-arch/bin"

echo "Formula-Arch removed."
echo "Backups are in: ~/.local/share/formula-arch/backups/"
