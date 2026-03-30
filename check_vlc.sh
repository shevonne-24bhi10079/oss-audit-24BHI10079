#!/bin/bash
echo "------------------------------------------"
echo "OSS AUDIT: PACKAGE & PATH INSPECTOR (macOS)"
echo "------------------------------------------"

# 1. Check if the VLC app bundle exists
if [ -d "/Applications/VLC.app" ]; then
    echo "[SUCCESS] VLC Media Player found in Applications."
    
    # 2. Find the version from the internal Info.plist file
    VERSION=$(defaults read /Applications/VLC.app/Contents/Info.plist 
CFBundleShortVersionString)
    echo "Installed Version: $VERSION"
    
    # 3. Show the physical size of the software footprint
    echo "Disk Space Used:"
    du -sh /Applications/VLC.app
    
    # 4. Check for the command-line alias
    if command -v vlc &> /dev/null; then
        echo "Command-line access: ENABLED at $(which vlc)"
    else
        echo "Command-line access: NOT LINKED (Standard for macOS)"
    fi
else
    echo "[ERROR] VLC is not installed in the standard Applications folder."
    echo "Please download it from videolan.org to complete the audit."
fi
echo "------------------------------------------"
