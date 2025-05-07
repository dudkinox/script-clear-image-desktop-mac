#!/bin/bash

DESKTOP_DIR="$HOME/Desktop"

find "$DESKTOP_DIR" -maxdepth 1 -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.gif" -o -iname "*.heic" \) -exec rm {} \;

echo "$(date): Deleted image files from Desktop" >> "$HOME/clean_desktop_log.txt"
