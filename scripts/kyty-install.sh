#!/usr/bin/env bash
set -euo pipefail

clear

echo " "
echo "  ✿ KYTY LINUX INSTALLER"
echo " "
echo "  Arch Linux installation environment"
echo " "

if [[ $EUID -ne 0 ]]; then
    echo "Please run this installer as root."
    exit 1
fi

if ! command -v archinstall >/dev/null 2>&1; then
    echo "Archinstall is not installed."
    echo "Install the archinstall package first."
    exit 1
fi

echo "Launching the Archinstall interface..."
exec archinstall