yay -S zellij

mkdir -p ~/.config/zellij/themes
[ ! -f "$HOME/.config/zellij/config.kdl" ] && cp ~/.local/share/da-files/configs/zellij.kdl ~/.config/zellij/config.kdl
cp ~/.local/share/da-files/themes/tokyo-night/zellij.kdl ~/.config/zellij/themes/tokyo-night.kdl
