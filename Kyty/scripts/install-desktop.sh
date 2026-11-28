#!/usr/bin/env bash

set -e

echo " "
echo "  ✿ KYTY LINUX - SAKURA DESKTOP"
echo " "

if ! command -v pacman >/dev/null 2>&1; then
    echo "Error: pacman was not found."
    exit 1
fi

echo "Installing XFCE desktop environment..."

sudo pacman -S --needed - < packages/desktop-xfce.txt

echo " "
echo "XFCE installation complete!"
echo "Enable LightDM with:"
echo "sudo systemctl enable lightdm"
["/usr/local/bin/install-kyty-desktop"]="0:0:755"