# Only attempt to set configuration if fastfetch is not already set
if [ ! -f "$HOME/.config/fastfetch/config.jsonc" ]; then
  mkdir -p ~/.config/fastfetch
  cp ~/.local/share/da-files/configs/fastfetch.jsonc ~/.config/fastfetch/config.jsonc
fi
