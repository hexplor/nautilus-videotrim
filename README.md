
# Video Trimmer Script for Nautilus on Ubuntu

## Overview

This script uses `ffmpeg` to trim video files. It is designed to be used within the Nautilus file manager on Ubuntu. It employs the `zenity` utility to display graphical dialogs for user input.

## Requirements

- Ubuntu (or any other Linux distribution compatible with Nautilus and Zenity)
- `ffmpeg` installed
- `zenity` installed

To install the required packages, run:

```bash
sudo apt update
sudo apt install ffmpeg zenity
```

## Installation

1. Download the script and place it in your `~/.local/share/nautilus/scripts/` directory.
2. Make the script executable by running `chmod +x /path/to/script.sh`.

## Usage

1. Navigate to a folder containing a video file using Nautilus.
2. Right-click on the video file.
3. Go to the "Scripts" submenu and select this script.
4. A dialog will appear asking for the start time. Enter it in `HH:MM:SS` format and click OK.
5. Another dialog will appear asking for the end time. Enter it in the same format and click OK.
6. The script will create a new trimmed video file in the same folder, with the name format `originalname_modified.extension`.

## Troubleshooting

If you encounter any issues, make sure that:

- You have the required packages (`ffmpeg` and `zenity`) installed.
- The script is placed in the correct directory and is executable.

For further support, you may consult your system logs or terminal output for detailed error messages.
