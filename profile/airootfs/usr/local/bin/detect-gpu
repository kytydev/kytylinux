#!/usr/bin/env bash
set -euo pipefail

if ! command -v lspci >/dev/null 2>&1; then
    echo "lspci is missing. Install pciutils first."
    exit 1
fi

echo "=== KYTY GPU DETECTION ==="

GPUS=$(lspci -nn | grep -Ei 'VGA compatible controller|3D controller|Display controller' || true)

if [[ -z "$GPUS" ]]; then
    echo "No supported GPU detected."
    exit 1
fi

printf '%s\n' "$GPUS"

if grep -qi 'NVIDIA' <<< "$GPUS"; then
    echo "NVIDIA graphics detected."
fi

if grep -qi 'AMD\|ATI' <<< "$GPUS"; then
    echo "AMD graphics detected."
fi

if grep -qi 'Intel' <<< "$GPUS"; then
    echo "Intel graphics detected."
fi

echo "Detection complete. No drivers were changed."