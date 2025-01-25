#!/bin/bash
#set -e
##################################################################################################################
# Author 	: Erik Dubois
# Website   : https://www.erikdubois.be
# Website   : https://www.alci.online
# Website   : https://www.ariser.eu
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
#tput setaf 0 = black 
#tput setaf 1 = red 
#tput setaf 2 = green
#tput setaf 3 = yellow 
#tput setaf 4 = dark blue 
#tput setaf 5 = purple
#tput setaf 6 = cyan 
#tput setaf 7 = gray 
#tput setaf 8 = light blue
##################################################################################################################

# Folder containing the .sh files
CONFIG_FOLDER="configs"

# Check if the configs folder exists
if [ ! -d "$CONFIG_FOLDER" ]; then
  echo "Error: Folder '$CONFIG_FOLDER' does not exist."
  exit 1
fi

# List all .sh files in the folder
sh_files=($(ls "$CONFIG_FOLDER"/*.sh 2>/dev/null))

# Check if there are any .sh files
if [ ${#sh_files[@]} -eq 0 ]; then
  echo "No .sh files found in the '$CONFIG_FOLDER' folder."
  exit 1
fi

# TUI using a simple menu
while true; do
  echo "Select a file to execute:"
  for i in "${!sh_files[@]}"; do
    filename=$(basename "${sh_files[$i]}")
    echo "$((i+1)). $filename"
  done
  echo "0. Exit"
  read -p "Enter your choice: " choice

  # Handle user input
  if [[ "$choice" =~ ^[0-9]+$ ]]; then
    if [ "$choice" -eq 0 ]; then
      echo "Exiting."
      break
    elif [ "$choice" -ge 1 ] && [ "$choice" -le ${#sh_files[@]} ]; then
      selected_file="${sh_files[$((choice-1))]}"
      echo "You selected: $(basename "$selected_file")"

      # Case structure based on the filename
      case "$(basename "$selected_file")" in
        alis-config-bios-ext4-grub-luks-lvm.sh)
          echo "Executing BIOS EXT4 GRUB LUKS LVM script..."
          bash "$selected_file"
          ;;
        alis-config-efi-ext4-luks-lvm-systemd.sh)
          echo "Executing EFI EXT4 LUKS LVM SYSTEMD script..."
          bash "$selected_file"
          ;;
        # Add more cases here if needed
        *)
          echo "Executing selected file..."
          bash "$selected_file"
          ;;
      esac
    else
      echo "Invalid choice. Please try again."
    fi
  else
    echo "Invalid input. Please enter a number."
  fi
done
