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

sudo dnf update -y >/dev/null
sudo dnf install -y git >/dev/null

echo "Installation starting..."
source ~/.local/share/da-files/install.sh
echo "Installation finished. Logout or reboot to see all changes..."
