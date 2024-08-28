yay -Syu
yay -S base-devel clang curl unzip fish docker fzf ripgrep \
  bat eza zoxide plocate btop openvpn \
  tldr fastfetch lazydocker lazygi

chsh -s /usr/bin/fish $USER

# Run terminal installers
for installer in ~/.local/share/da-files/install/terminal/*.sh; do source $installer; done

mkdir -p ~/.config/fish/functions
cp ~/.local/share/da-files/configs/fish/config.fish ~/.config/fish/config.fish
cp -r ~/.local/share/da-files/configs/fish/functions/. ~/.config/fish/functions/
