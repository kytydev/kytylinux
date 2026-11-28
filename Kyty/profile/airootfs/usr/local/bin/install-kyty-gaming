#!/usr/bin/env bash
set -euo pipefail

MANIFEST="/usr/share/kyty/packages/gaming.txt"

if [[ $EUID -ne 0 ]]; then
    echo "Run with sudo: sudo install-kyty-gaming"
    exit 1
fi

if [[ ! -f "$MANIFEST" ]]; then
    echo "Kyty gaming package manifest not found."
    exit 1
fi

mapfile -t PACKAGES < <(
    grep -Ev '^[[:space:]]*(#|$)' "$MANIFEST"
)

echo "Installing Kyty gaming packages..."
pacman -Syu --needed "${PACKAGES[@]}"

echo "Kyty gaming packages installed!"