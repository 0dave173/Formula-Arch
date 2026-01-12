#!/usr/bin/env bash
set -euo pipefail
theme="${HOME}/.config/rofi/theme.rasi"
prompt="$(rofi -dmenu -p "RaceControl" -theme "${theme}" <<< "")"
[[ -z "${prompt}" ]] && exit 0
tmp="$(mktemp)"; trap 'rm -f "${tmp}"' EXIT
echo "${prompt}" | "${HOME}/.local/share/formula-arch/bin/racecontrol.sh" > "${tmp}" || true
rofi -e "$(head -c 3500 "${tmp}")"
