#!/bin/bash
set -e

ascii_art='
________      _____                           __                
\______ \    /  _  \             ______ _____/  |_ __ ________  
 |    |  \  /  /_\  \   ______  /  ___// __ \   __\  |  \____ \ 
 |    `   \/    |    \ /_____/  \___ \\  ___/|  | |  |  /  |_> >
/_______  /\____|__  /         /____  >\___  >__| |____/|   __/ 
        \/         \/               \/     \/           |__|    
'

echo -e "$ascii_art"
echo -e "\nBeginning macOS setup (or abort with ctrl+c)..."

if [ "$(uname)" != "Darwin" ]; then
  echo "This script is for macOS only."
  exit 1
fi

if ! xcode-select -p &>/dev/null; then
  echo "Installing Xcode Command Line Tools..."
  xcode-select --install
fi

echo "Installation starting..."
source ~/.local/share/da-files/install.sh
echo "Installation finished. Restart your terminal to see all changes."
