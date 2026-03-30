#!/bin/bash
echo "--- VLC ACTIVE PROCESS AUDIT ---"

# Check if VLC is currently running
PID=$(pgrep -x "VLC")

if [ -z "$PID" ]; then
    echo "[STATUS]: VLC is NOT running."
    echo "Please open VLC and play a video to see real-time 
stats."
else
    echo "[STATUS]: VLC is ACTIVE (Process ID: $PID)"
    echo "Real-time Resource Usage:"
    ps -p $PID -o %cpu,%mem,time
fi
echo "--------------------------------"
