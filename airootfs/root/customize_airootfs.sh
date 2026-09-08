#!/usr/bin/env bash
# Runs once at ISO build time (mkarchiso arch-chroots into the pacstrapped
# airootfs, executes this, then deletes it). Pulls in the real personalized
# Hyprland setup instead of duplicating it by hand into airootfs/.
#
# Deliberately skips install.sh --shell: zsh/zshrc pulls in zinit, which
# git-clones on first run, and that's the wrong thing to do unprompted on a
# live/offline medium. It would also race root's .zlogin, which execs into
# Hyprland before ever reaching .zlogin's automated_script.sh hook.
set -euo pipefail

git clone --depth 1 https://github.com/clanghans/dotfiles /root/dotfiles
cd /root/dotfiles
./install.sh --packages --hyprland --fonts --alacritty --ghostty --tmux --yazi
