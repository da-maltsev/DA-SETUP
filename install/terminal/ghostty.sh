sudo dnf copr enable pgdev/ghostty
sudo dnf install -y ghostty


mkdir -p ~/.config/ghostty/
cp ~/.local/share/da-files/configs/ghostty.conf ~/.config/ghostty/config
