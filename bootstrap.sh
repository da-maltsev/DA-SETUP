#!/bin/bash
set -e

ascii_art='
    ____  ___       _____ ______________  ______ 
   / __ \/   |     / ___// ____/_  __/ / / / __ \
  / / / / /| |     \__ \/ __/   / / / / / / /_/ /
 / /_/ / ___ |    ___/ / /___  / / / /_/ / ____/ 
/_____/_/  |_|   /____/_____/ /_/  \____/_/      
'

echo -e "$ascii_art"
echo -e "\nBeginning WSL Ubuntu shell setup (or abort with ctrl+c)..."

if [ "$(uname -s)" != "Linux" ]; then
  echo "This setup is intended for WSL Ubuntu. Aborting."
  exit 1
fi

if [ ! -d "$HOME/.local/share/da-files" ]; then
  echo "Cloning da-files..."
  mkdir -p "$HOME/.local/share"
  git clone --depth=1 git@github.com:da-maltsev/DA-SETUP.git "$HOME/.local/share/da-files"
fi

cd "$HOME/.local/share/da-files"

echo "Installation starting..."
source "$HOME/.local/share/da-files/install.sh"
echo "Installation finished. Restart your terminal or run 'exec zsh'."
