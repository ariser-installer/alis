#!/usr/bin/env bash
set -eu

# Arch Linux Install Script (alis) installs unattended, automated
# and customized Arch Linux system.
# Copyright (C) 2022 picodotdev

# Display the message
echo -e "\nInstall packer and virtualbox before continuing"
echo "(Press any key to continue)"

# Wait for the user to press any key
read -n 1 -s

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

