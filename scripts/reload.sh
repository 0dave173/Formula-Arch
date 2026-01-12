#!/usr/bin/env bash
set -euo pipefail

hyprctl reload >/dev/null 2>&1 || true

pkill waybar >/dev/null 2>&1 || true
nohup waybar >/dev/null 2>&1 &

pkill mako >/dev/null 2>&1 || true
nohup mako >/dev/null 2>&1 &

echo "Reload triggered."
