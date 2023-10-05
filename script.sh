#!/bin/bash

# Get the name of the input file
input_file="$1"

# Use Zenity to get the start time and end time
start_time=$(zenity --entry --title "Start Time" --text "Enter the start time in HH:MM:SS format:")
end_time=$(zenity --entry --title "End Time" --text "Enter the end time in HH:MM:SS format:")

# If the user cancelled any of the dialogs, exit the script
if [ -z "$start_time" ] || [ -z "$end_time" ]; then
  zenity --error --text="Cancelled. No actions were taken."
  exit 1
fi

# Create the name for the output file
output_file="${input_file%.*}_modified.${input_file##*.}"

# Run ffmpeg with the given parameters
ffmpeg -ss $start_time -to $end_time -i "$input_file" -vcodec copy -acodec copy "$output_file"

# Show a message indicating that the conversion is complete
zenity --info --text="Conversion completed. The output file is: $output_file"
