# fix for screen readers
if grep -Fqa 'accessibility=' /proc/cmdline &> /dev/null; then
    setopt SINGLE_LINE_ZLE
fi

~/.automated_script.sh

# Live desktop: reach a terminal automatically instead of a bare tty1 shell.
# `run-install` is not launched here on purpose, since it partitions disks
# and stays a deliberate command you type from within the live session.
if [[ $(tty) == "/dev/tty1" ]]; then
    exec uwsm start hyprland.desktop
fi
