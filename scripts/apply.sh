#!/usr/bin/env bash
set -euo pipefail

repoRoot="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
dot="${repoRoot}/dotfiles"

mkdir -p "${HOME}/.config"
mkdir -p "${HOME}/.local/share/formula-arch/bin"

linkDir() {
  local src="${1}"
  local dst="${2}"
  rm -rf "${dst}"
  ln -s "${src}" "${dst}"
}

# Hypr / Waybar / Rofi / Mako / Kitty
linkDir "${dot}/hypr" "${HOME}/.config/hypr"
linkDir "${dot}/waybar" "${HOME}/.config/waybar"
linkDir "${dot}/rofi" "${HOME}/.config/rofi"
linkDir "${dot}/mako" "${HOME}/.config/mako"
linkDir "${dot}/kitty" "${HOME}/.config/kitty"

# Starship expects a file, not folder
rm -f "${HOME}/.config/starship.toml"
ln -s "${dot}/starship/starship.toml" "${HOME}/.config/starship.toml"

# GTK: copy CSS + button SVGs into GTK dirs (relative URL works)
mkdir -p "${HOME}/.config/gtk-3.0/window-buttons"
mkdir -p "${HOME}/.config/gtk-4.0/window-buttons"

cp -f "${dot}/gtk/gtk-3.0/gtk.css" "${HOME}/.config/gtk-3.0/gtk.css"
cp -f "${dot}/gtk/gtk-4.0/gtk.css" "${HOME}/.config/gtk-4.0/gtk.css"

cp -f "${repoRoot}/assets/icons/window-buttons/"*.svg \
  "${HOME}/.config/gtk-3.0/window-buttons/"
cp -f "${repoRoot}/assets/icons/window-buttons/"*.svg \
  "${HOME}/.config/gtk-4.0/window-buttons/"

# Helper scripts into ~/.local/share/formula-arch/bin
cp -f "${repoRoot}/scripts/set-wallpaper.sh" \
  "${HOME}/.local/share/formula-arch/bin/set-wallpaper.sh"
chmod +x "${HOME}/.local/share/formula-arch/bin/set-wallpaper.sh"

cp -f "${repoRoot}/scripts/ai/racecontrol.sh" \
  "${HOME}/.local/share/formula-arch/bin/racecontrol.sh"
chmod +x "${HOME}/.local/share/formula-arch/bin/racecontrol.sh"

echo "Apply done."

chmod +x formula-arch/scripts/*.sh
chmod +x formula-arch/scripts/ai/*.sh
chmod +x formula-arch/scripts/ai/providers/*.sh
