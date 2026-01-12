#!/usr/bin/env bash
set -euo pipefail
command -v gsettings >/dev/null 2>&1 || exit 0
gsettings set org.gnome.desktop.interface icon-theme "Formula-Arch-Icons" || true
