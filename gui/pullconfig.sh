#!/bin/bash

CURRENT_DATE=$(date +"%Y-%m-%d")
COMPUTER_NAME=$(hostname)


# Define the source files
HYPRCONFFILE="gui/hypr/hyprland.conf"

# Define the target directory
HYPRCONF_DIR="$HOME/.config/hypr/"

git pull

# Copy the files to the target directory and overwrite if they already exist
cp -f "$HYPRCONFFILE" "$HYPRCONF_DIR"

# Print a message indicating that the files have been copied
echo "### Fin - Tout est bien récupéré depuis le git et implanté sur $COMPUTER_NAME ###"