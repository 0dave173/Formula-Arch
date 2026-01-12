#!/usr/bin/env bash
set -euo pipefail
rootDir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
promptSystem="$rootDir/prompts/system.txt"
model="${FORMULAARCH_AI_MODEL:-llama3}"
"$rootDir/providers/ollama.sh" "$model" "$promptSystem"
