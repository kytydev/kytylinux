#!/usr/bin/env bash
set -euo pipefail

MANIFEST="$(dirname -- "${BASH_SOURCE[0]}")/../packages/gaming.txt"

if [[ $EUID -ne 0 ]]; then
    echo "Run with sudo: sudo install-kyty-gaming"
    exit 1
fi

if [[ ! -f "$MANIFEST" ]]; then
    echo "Kyty gaming package manifest not found."
    exit 1
fi

if ! packages=$(grep -Ev '^[[:space:]]*(#|$)' "$MANIFEST"); then
    echo "No packages found in $MANIFEST." >&2
    exit 1
fi
mapfile -t PACKAGES <<< "$packages"

if ! command -v pacman-conf >/dev/null 2>&1 || ! pacman-conf --repo-list | grep -Fx 'multilib' >/dev/null; then
    echo "Enable [multilib] in /etc/pacman.conf before installing Kyty gaming packages." >&2
    exit 1
fi

echo "Installing Kyty gaming packages..."
pacman -Syu --needed "${PACKAGES[@]}"

echo "Kyty gaming packages installed!"