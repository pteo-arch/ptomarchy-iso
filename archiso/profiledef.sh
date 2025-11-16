#!/usr/bin/env bash
# profiledef.sh

# This file defines the Archiso profile for PTOmarchy.
# It's a placeholder for now.

iso_name="ptomarchy"
iso_label="PTOMARCHY_$(date +%Y%m%d)"
iso_publisher="PTOmarchy <https://github.com/yourusername/ptomarchy>"
iso_application="PTOmarchy Live/Install Media"
iso_version="$(date +%Y.%m.%d)"
arch="x86_64"
buildmodes=("iso")
bootmodes=("bios.syslinux.mbr" "bios.syslinux.eltorito" "uefi.systemd-boot.esp" "uefi.systemd-boot.eltorito")
# You would typically define packages here
packages=(
    # base
    # linux
    # ...
)

# Copy files from the build directory to the airootfs
# This is where the merged omarchy + ptomarchy files would go
# For now, this is just a placeholder.
# copy_dir() {
#     cp -r "$1" "$2"
# }
# copy_dir "/home/pedro/ISO-Build/ptomarchy-build/path/to/files" "$ARCHISO_PROFILE_DIR/airootfs/path/to/destination"

# Add any custom commands to run during the build process
# customize_airootfs() {
#     # Example: Enable a service
#     # arch-chroot "$ARCHISO_PROFILE_DIR/airootfs" systemctl enable my-service
# }
