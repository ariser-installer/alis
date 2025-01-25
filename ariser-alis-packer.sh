#!/usr/bin/env bash
set -eu

# Arch Linux Install Script (alis) installs unattended, automated
# and customized Arch Linux system.
# Copyright (C) 2022 picodotdev

echo "Change line 13 into the config you want"

CONFIG_FILE="alis-packer.json"
BRANCH="main"
BRANCH_QUALIFIER=""
CONFIG_FILE_SH="ariser-alis-config-efi-ext4-grub-xfce.sh"

while getopts "b:c:" arg; do
  case $arg in
    b)
      BRANCH="$OPTARG"
      ;;
    c)
      CONFIG_FILE_SH="$OPTARG"
      ;;
    *) 
      echo "Unknown option: $arg"
      exit 1
      ;;
  esac
done

if [ "$BRANCH" == "sid" ]; then
  BRANCH_QUALIFIER="-sid"
fi

packer validate "configs/$CONFIG_FILE"
packer build -force -on-error=ask \
  -var "branch=$BRANCH" \
  -var "branch_qualifier=$BRANCH_QUALIFIER" \
  -var "config_file_sh=$CONFIG_FILE_SH" \
  "configs/$CONFIG_FILE"

