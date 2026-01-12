#!/usr/bin/env bash
set -euo pipefail

hyprctl reload >/dev/null 2>&1 || true

pkill waybar >/dev/null 2>&1 || true
nohup waybar >/dev/null 2>&1 &

pkill mako >/dev/null 2>&1 || true
nohup mako >/dev/null 2>&1 &

echo "Reload triggered."

chmod +x formula-arch/scripts/*.sh
chmod +x formula-arch/scripts/ai/*.sh
chmod +x formula-arch/scripts/ai/providers/*.sh
