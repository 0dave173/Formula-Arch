#!/usr/bin/env bash
set -euo pipefail
repoRoot="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"; dot="$repoRoot/dotfiles"
mkdir -p "$HOME/.config" "$HOME/.local/share/formula-arch/bin" "$HOME/.local/share/icons"
ln -sfn "$dot/hypr" "$HOME/.config/hypr"
ln -sfn "$dot/waybar" "$HOME/.config/waybar"
ln -sfn "$dot/rofi" "$HOME/.config/rofi"
ln -sfn "$dot/mako" "$HOME/.config/mako"
ln -sfn "$dot/kitty" "$HOME/.config/kitty"
mkdir -p "$HOME/.config/gtk-3.0/window-buttons" "$HOME/.config/gtk-4.0/window-buttons"
cp -f "$dot/gtk/gtk-3.0/gtk.css" "$HOME/.config/gtk-3.0/gtk.css"
cp -f "$dot/gtk/gtk-4.0/gtk.css" "$HOME/.config/gtk-4.0/gtk.css"
cp -f "$repoRoot/assets/icons/window-buttons/"*.svg "$HOME/.config/gtk-3.0/window-buttons/" || true
cp -f "$repoRoot/assets/icons/window-buttons/"*.svg "$HOME/.config/gtk-4.0/window-buttons/" || true
rm -rf "$HOME/.local/share/icons/Formula-Arch-Icons"; cp -a "$repoRoot/assets/icons/Formula-Arch-Icons" "$HOME/.local/share/icons/Formula-Arch-Icons"
cp -f "$repoRoot/scripts/set-wallpaper.sh" "$HOME/.local/share/formula-arch/bin/set-wallpaper.sh"; chmod +x "$HOME/.local/share/formula-arch/bin/set-wallpaper.sh"
cp -f "$repoRoot/scripts/ai/racecontrol.sh" "$HOME/.local/share/formula-arch/bin/racecontrol.sh"; chmod +x "$HOME/.local/share/formula-arch/bin/racecontrol.sh"
