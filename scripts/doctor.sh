#!/usr/bin/env bash
set -euo pipefail

needCmds=(
  hyprctl
  waybar
  rofi
  kitty
  mako
)

optionalCmds=(
  swww
  grim
  slurp
  wl-copy
  ollama
)

echo "Formula-Arch doctor:"
echo

missing=0
for c in "${needCmds[@]}"; do
  if ! command -v "${c}" >/dev/null 2>&1; then
    echo "  MISSING: ${c}"
    missing=1
  else
    echo "  OK:      ${c}"
  fi
done

echo
echo "Optional:"
for c in "${optionalCmds[@]}"; do
  if ! command -v "${c}" >/dev/null 2>&1; then
    echo "  (opt) missing: ${c}"
  else
    echo "  (opt) OK:      ${c}"
  fi
done

echo
if [[ "${missing}" -eq 1 ]]; then
  echo "Install missing deps via pacman/AUR."
  exit 1
fi

echo "All required dependencies found."
