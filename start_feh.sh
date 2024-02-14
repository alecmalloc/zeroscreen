#!/bin/bash

# Define the path to the Samba share mount point
SHARE_PATH="/home/alec/Sync3"
# Temporary files to store file lists for comparison
PREV_FILE_LIST="/tmp/prev_file_list.txt"
CURRENT_FILE_LIST="/tmp/current_file_list.txt"

# Generate an initial file list
ls "$SHARE_PATH" > "$PREV_FILE_LIST"

#start feh initial
feh -F -D 5 --recursive "$SHARE_PATH" &

while true; do
  # Generate a current file list
  ls "$SHARE_PATH" > "$CURRENT_FILE_LIST"
  
  # Compare the previous and current file lists
  if ! cmp -s "$PREV_FILE_LIST" "$CURRENT_FILE_LIST"; then
    # If differences are found, terminate the current instance of feh
    pkill -f "feh -F -D 5 --recursive $SHARE_PATH"
    # Restart feh with the updated image directory and settings
    feh -F -D 5 --recursive "$SHARE_PATH" &
    
    # Update the previous file list for the next iteration
    cp "$CURRENT_FILE_LIST" "$PREV_FILE_LIST"
  fi
  
  # Wait for a specified interval before checking again
  sleep 60 # Check every minute for changes
done

