#!/usr/bin/env bash
set -euo pipefail
model="${1:-llama3}"
promptFile="${2:-}"
command -v ollama >/dev/null 2>&1 || { echo "ollama not found"; exit 1; }
systemPrompt=""; [[ -n "$promptFile" && -f "$promptFile" ]] && systemPrompt="$(cat "$promptFile")"
userPrompt="$(cat)"
{ [[ -n "$systemPrompt" ]] && echo "$systemPrompt"; echo; echo "$userPrompt"; } | ollama run "$model"
