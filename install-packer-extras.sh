#!/usr/bin/env bash
set -eu

# Arch Linux Install Script (alis) installs unattended, automated
# and customized Arch Linux system.
# Copyright (C) 2022 picodotdev

# Prompt the user for installation confirmation
read -p "Do you want to install Packer and VirtualBox? (y/n): " response

if [[ "$response" == "y" || "$response" == "Y" ]]; then
  # Update system and install packer and virtualbox
  echo "Installing Packer and VirtualBox..."
  sudo pacman -Syu packer virtualbox --noconfirm

  # Check if packer is installed
  if command -v packer >/dev/null 2>&1; then
    echo "Packer is installed. Installing VirtualBox plugin for Packer..."
    packer plugins install github.com/hashicorp/virtualbox
    echo "VirtualBox plugin installed successfully."
  else
    echo "Packer installation failed or not found. Please check the installation."
  fi
else
  echo "Installation canceled by the user."
fi
