#!/bin/bash

# Target monitor and resolutions
MONITOR="DP-3"		   # Your screen display
RES_GAME="1280x1024@75"	   # Your game resolution/refresh rate
RES_NORMAL="1920x1080@60"  # Your normal resolution/refresh rate

# Set gaming resolution
kscreen-doctor output."$MONITOR".mode."$RES_GAME"

# Launch CS2 and get its PID
steam steam://rungameid/730 &
STEAM_PID=$!

# Wait for CS2 process to appear (adjust CS2_PROCESS_NAME as needed)
CS2_PROCESS_NAME="cs2"
while ! pgrep -x "$CS2_PROCESS_NAME" >/dev/null; do
    sleep 1
done

# Store CS2 PID
CS2_PID=$(pgrep -x "$CS2_PROCESS_NAME")

# Wait for CS2 to exit
tail --pid=$CS2_PID -f /dev/null

# Restore original resolution
kscreen-doctor output."$MONITOR".mode."$RES_NORMAL"
