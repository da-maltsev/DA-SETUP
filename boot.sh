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
echo -e "\nBegin installation (or abort with ctrl+c)..."

sudo pacman -Syu >/dev/null
sudo pacman -S git >/dev/null

echo "Installation starting..."
source ~/.local/share/da-files/install.sh
echo "Installation finished. Logout or reboot to see all changes..."
