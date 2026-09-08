# hyprarch

Self-built Arch Linux install medium for a standalone Hyprland setup, no
display manager. Built with `mkarchiso` from this profile directory.

Boots to a live Hyprland session (root autologin on tty1), pulling in the
real config from [clanghans/dotfiles](https://github.com/clanghans/dotfiles)
at ISO build time (`airootfs/root/customize_airootfs.sh`) and again at
install time (`airootfs/usr/local/bin/run-install`, which drives
`archinstall` then that repo's `install.sh --all`).

## Build

```sh
sudo mkarchiso -v -w work -o out .
```
