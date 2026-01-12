#!/usr/bin/env bash
set -euo pipefail

model="${1:-llama3}"
promptFile="${2:-}"

if ! command -v ollama >/dev/null 2>&1; then
  echo "ollama not found. Install it first."
  exit 1
fi

systemPrompt=""
if [[ -n "${promptFile}" && -f "${promptFile}" ]]; then
  systemPrompt="$(cat "${promptFile}")"
fi

userPrompt="$(cat)"

{
  [[ -n "${systemPrompt}" ]] && echo "${systemPrompt}"
  echo
  echo "${userPrompt}"
} | ollama run "${model}"
