set -e

ascii_art='
________      _____              _____.__.__                 
\______ \    /  _  \           _/ ____\__|  |   ____   ______
 |    |  \  /  /_\  \   ______ \   __\|  |  | _/ __ \ /  ___/
 |    `   \/    |    \ /_____/  |  |  |  |  |_\  ___/ \___ \ 
/_______  /\____|__  /          |__|  |__|____/\___  >____  >
        \/         \/                              \/     \/ 
'

echo -e "$ascii_art"
echo -e "\nBegin installation (or abort with ctrl+c)..."

sudo pacman -Syu >/dev/null
sudo pacman -S git >/dev/null

echo "Cloning da-files..."
rm -rf ~/.local/share/da-files
git clone https://github.com/da-maltsev/da-files.git ~/.local/share/da-files >/dev/null

echo "Installation starting..."
source ~/.local/share/da-files/install.sh
