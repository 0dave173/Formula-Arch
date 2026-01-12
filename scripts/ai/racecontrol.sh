#!/usr/bin/env bash
set -euo pipefail

rootDir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
promptSystem="${rootDir}/prompts/system.txt"

model="${FORMULAARCH_AI_MODEL:-llama3}"
provider="${FORMULAARCH_AI_PROVIDER:-ollama}"

case "${provider}" in
  ollama)
    "${rootDir}/providers/ollama.sh" "${model}" "${promptSystem}"
    ;;
  *)
    echo "Unknown provider: ${provider}"
    echo "Set FORMULAARCH_AI_PROVIDER=ollama"
    exit 1
    ;;
esac

chmod +x formula-arch/scripts/ai/racecontrol.sh