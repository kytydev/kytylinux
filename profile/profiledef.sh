#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="kytylinux"
iso_label="kyty_version_0.1.0"
iso_publisher="Kyty Arch Linux <https://github.com/kytydev/kytylinux>"
iso_application="Kyty Linux Live"
iso_version="0.1.0"
install_dir="arch"
bootmodes=('bios.syslinux'
           'uefi.systemd-boot')
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86,arm64' '-b' '1M' '-Xdict-size' '1M')
bootstrap_tarball_compression=('zstd' '-c' '-T0' '--auto-threads=logical' '--long' '-19')
kernel_params_aarch64="clk_ignore_unused pd_ignore_unused arm64.nopauth"
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/root/.gnupg"]="0:0:700"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
  ["/usr/local/bin/kyty-desktop"]="0:0:755"
  ["/usr/local/bin/install-kyty-desktop"]="0:0:755"
  ["/usr/local/bin/install-kyty-gaming"]="0:0:755"
  ["/usr/local/bin/kyty-info"]="0:0:755"
  ["/usr/local/bin/detect-gpu"]="0:0:755"
  ["/usr/local/bin/kyty-install"]="0:0:755"
  ["/usr/local/bin/kyty-welcome"]="0:0:755"
)
