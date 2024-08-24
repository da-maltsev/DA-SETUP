if [ ! -d "$HOME/.config/nvim" ]; then
  # Use LazyVim
  git clone https://github.com/LazyVim/starter ~/.config/nvim

  # Disable update notification popup in starter config
  sed -i 's/checker = { enabled = true }/checker = { enabled = true, notify = false }/g' ~/.config/nvim/lua/config/lazy.lua

  # Make everything match the terminal transparency
  mkdir -p ~/.config/nvim/plugin/after
  cp ~/.local/share/da-files/configs/neovim/transparency.lua ~/.config/nvim/plugin/after/

  # Default to Tokyo Night theme
  cp ~/.local/share/da-files/themes/tokyo-night/neovim.lua ~/.config/nvim/lua/plugins/theme.lua

  # Enable default extras
  cp ~/.local/share/da-files/configs/neovim/lazyvim.json ~/.config/nvim/lazyvim.json
fi
