#!/usr/bin/env bash
set -euo pipefail
theme="${HOME}/.config/rofi/theme.rasi"
choice="$(printf "Lock
Logout
Reboot
Shutdown
Cancel" | rofi -dmenu -p "Power" -theme "${theme}")"
case "${choice}" in
  Lock)
    if command -v swaylock >/dev/null 2>&1; then swaylock
    elif command -v hyprlock >/dev/null 2>&1; then hyprlock
    else notify-send "Formula-Arch" "No lock tool found (swaylock/hyprlock)."
    fi;;
  Logout) hyprctl dispatch exit ;;
  Reboot) systemctl reboot ;;
  Shutdown) systemctl poweroff ;;
  *) exit 0 ;;
esac
