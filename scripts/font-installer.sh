#!/bin/bash

# Check if a directory argument is provided
if [ -z "$1" ]; then
    echo "No directory provided, requires argument"
    exit 1
else
    echo "Transferring Fonts from $1"
    
    directory="$1"

    # Loop through all files in the directory
    for file in "$directory"/*; do
        if [[ -f "$file" ]]; then
            extension="${file##*.}"

            # Convert the extension to lowercase for safety
            extension=$(echo "$extension" | tr '[:upper:]' '[:lower:]')

            # Perform actions based on the file extension
            if [[ "$extension" == "ttf" ]]; then
                echo "Font has been added to your fonts (TrueType)"
                mv "$file" /usr/local/share/fonts/ttf
            elif [[ "$extension" == "otf" ]]; then
                echo "Font has been added to your fonts (OpenType)"
                mv "$file" /usr/local/share/fonts/otf
            fi
        fi
    done
fi
