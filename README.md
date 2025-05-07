# 🧹 script-clear-image-desktop-mac

![macOS](https://img.shields.io/badge/Platform-macOS-lightgrey?logo=apple)
![Shell](https://img.shields.io/badge/Script-Bash-blue?logo=gnubash)
![Cronjob](https://img.shields.io/badge/Scheduled-00%3A00%20daily-success?logo=clockify)

> ✨ สคริปต์สำหรับลบรูปภาพอัตโนมัติจาก Desktop บน macOS ทุกเที่ยงคืน  
> 📸 เหมาะสำหรับคนที่ Screenshot จน Desktop ล้น 😵

---

## 🛠️ วิธีติดตั้ง

1. **ดาวน์โหลดหรือคัดลอกไฟล์นี้:**

### `clean_desktop_images.sh`
```bash
#!/bin/bash

DESKTOP_DIR="$HOME/Desktop"

# 🔍 ค้นหาและลบไฟล์ภาพที่พบบน Desktop
find "$DESKTOP_DIR" -maxdepth 1 -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.gif" -o -iname "*.heic" \) -exec rm {} \;

# 📝 log การลบ (ถ้าต้องการ)
echo "$(date): Deleted image files from Desktop" >> "$HOME/clean_desktop_log.txt"
