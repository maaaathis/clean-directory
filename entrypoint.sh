#!/bin/bash

set -e # fail on error

echo "[+] Action start"
TARGET_DIRECTORY="${1:-.}"

echo "[+] Delete target directory"
# include hidden files -> https://askubuntu.com/questions/740805/how-can-i-remove-all-files-from-current-directory-using-terminal
shopt -s dotglob
rm -rf "$TARGET_DIRECTORY"/*