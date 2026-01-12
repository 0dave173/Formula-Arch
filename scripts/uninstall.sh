#!/usr/bin/env bash
set -euo pipefail
rm -rf "$HOME/.config/hypr" "$HOME/.config/waybar" "$HOME/.config/rofi" "$HOME/.config/mako" "$HOME/.config/kitty"
rm -rf "$HOME/.config/gtk-3.0/window-buttons" "$HOME/.config/gtk-4.0/window-buttons"
rm -f "$HOME/.config/gtk-3.0/gtk.css" "$HOME/.config/gtk-4.0/gtk.css"
rm -rf "$HOME/.local/share/formula-arch/bin"
echo "Formula-Arch removed. Backups: ~/.local/share/formula-arch/backups"
