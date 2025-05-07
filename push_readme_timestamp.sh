#!/bin/bash

# ไปยังโฟลเดอร์โปรเจกต์
cd /Users/sorener/Documents/script-clear-image-desktop-mac || exit 1

# เพิ่ม timestamp ลง README.md
echo "Last updated: $(date '+%Y-%m-%d %H:%M:%S')" > README.md

# Git push
git add README.md
git commit -m "Update timestamp at $(date '+%Y-%m-%d %H:%M:%S')"
git push origin main
