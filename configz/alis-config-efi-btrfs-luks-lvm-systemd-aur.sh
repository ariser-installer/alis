#!/usr/bin/env bash
set -eu

sed -i "s/^FILE_SYSTEM_TYPE=.*/FILE_SYSTEM_TYPE=\"btrfs\"/" /alis/alis.conf
sed -i "s/^LVM=.*/LVM=\"true\"/" /alis/alis.conf
sed -i "s/^LUKS_PASSWORD=.*/LUKS_PASSWORD=\"erik\"/" /alis/alis.conf
sed -i "s/^LUKS_PASSWORD_RETYPE=.*/LUKS_PASSWORD_RETYPE=\"erik\"/" /alis/alis.conf
sed -i "s/^BOOTLOADER=.*/BOOTLOADER=\"systemd\"/" /alis/alis.conf
