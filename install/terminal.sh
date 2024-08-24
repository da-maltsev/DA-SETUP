yay -Syu
yay -S base-devel clang curl git unzip fish docker fzf ripgrep \
  bat eza zoxide plocate btop apache2-utils openvpn \
  fd-find tldr fastfetch lazydocker lazygit mise

chsh -s /usr/bin/fish $USER

# Run terminal installers
for installer in ~/.local/share/da-files/install/terminal/*.sh; do source $installer; done

mkdir -p ~/.config/fish/functions
cp ~/.local/share/da-files/configs/fish/config.fish ~/.config/fish/config.fish
cp -r ~/.local/share/da-files/configs/fish/functions/. ~/.config/fish/functions/
