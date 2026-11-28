#!/usr/bin/env bash

echo " "
echo "  ✿ KYTY LINUX — SYSTEM INFORMATION"
echo " "

echo "OS:      $(grep '^PRETTY_NAME=' /etc/os-release | cut -d= -f2- | tr -d '"')"
echo "Kernel:  $(uname -r)"
echo "CPU:     $(grep -m1 'model name' /proc/cpuinfo | cut -d: -f2-)"
echo "Memory:  $(free -h | awk '/^Mem:/ {print $2}')"
echo "GPU:     $(lspci | grep -Ei 'VGA compatible controller|3D controller|Display controller' | cut -d: -f3- | xargs)"
echo " "