#!/bin/bash
echo "=========================================="
echo "VLC SYSTEM AUDIT: CONFIG & CACHE PATHS"
echo "=========================================="

# VLC stores its "memory" in the Library folder
VLC_CONFIG="$HOME/Library/Preferences/org.videolan.vlc"
VLC_DATA="$HOME/Library/Application Support/org.videolan.vlc"

echo "[CHECKING CONFIGURATION]"
if [ -d "$VLC_CONFIG" ]; then
    echo "Found Config Folder: $VLC_CONFIG"
    ls -lh "$VLC_CONFIG" | head -n 3
else
    echo "Config folder not found (Default settings in use)."
fi

echo -e "\n[CHECKING DATA FOOTPRINT]"
if [ -d "$VLC_DATA" ]; then
    echo "Found Application Data at: $VLC_DATA"
    du -sh "$VLC_DATA"
else
    echo "No custom application data found."
fi

echo "=========================================="

