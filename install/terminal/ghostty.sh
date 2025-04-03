dnf copr enable pgdev/ghostty
dnf install -y ghostty


mkdir -p ~/.config/ghostty/
cp ~/.local/share/da-files/configs/ghostty.conf ~/.config/ghostty/config
