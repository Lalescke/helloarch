#!/bin/bash

CURRENT_DATE=$(date +"%Y-%m-%d")
COMPUTER_NAME=$(hostname)

# Define the source files
HYPRCONFFILE="~/.config/hypr/hyprland.conf"

# Define the target directory
HYPRCONF_DIR="/gui/hyprland"

# Copy the files to the target directory and overwrite if they already exist
cp -f "$HYPRCONFFILE" "$HYPRCONF_DIR"

git add .
git commit -m " config push le $CURRENT_DATE depuis le pc $COMPUTER_NAME"
git push

# Print a message indicating that the files have been copied
echo "### Fin - Tout est bien envoyé sur le git askip ###"