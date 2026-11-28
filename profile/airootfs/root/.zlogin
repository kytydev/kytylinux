# fix for screen readers
if grep -Fqa 'accessibility=' /proc/cmdline &> /dev/null; then
    setopt SINGLE_LINE_ZLE
fi

~/.automated_script.sh

if [[ -o interactive && $(tty) == /dev/tty1 ]]; then
    /usr/local/bin/kyty-welcome
fi
