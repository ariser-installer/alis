#!/usr/bin/env bash
set -eu

sed -i "s/ROOT_PASSWORD=.*/ROOT_PASSWORD=\"erik\"/" ./alis.conf
sed -i "s/ROOT_PASSWORD_RETYPE=.*/ROOT_PASSWORD_RETYPE=\"erik\"/" ./alis.conf
sed -i "s/USER_PASSWORD=.*/USER_PASSWORD=\"erik\"/" ./alis.conf
sed -i "s/USER_PASSWORD_RETYPE=.*/USER_PASSWORD_RETYPE=\"erik\"/" ./alis.conf
sed -i "s/BOOTLOADER=.*/BOOTLOADER=\"grub\"/" ./alis.conf
sed -i "s/DESKTOP_ENVIRONMENT=.*/DESKTOP_ENVIRONMENT=\"cinnamon\"/" ./alis.conf
