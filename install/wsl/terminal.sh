#!/bin/bash
set -e

source ~/.local/share/da-files/install/shared.sh

echo "Updating package list and installing base packages..."
sudo apt-get update
sudo apt-get install -y zsh git curl fzf ripgrep bat eza neovim

# Ubuntu ships bat as 'batcat'; make it available as 'bat'
if command -v batcat &>/dev/null && ! command -v bat &>/dev/null; then
  mkdir -p "$HOME/.local/bin"
  ln -sf "$(command -v batcat)" "$HOME/.local/bin/bat"
fi

# lazygit is not packaged in Ubuntu by default
if ! command -v lazygit &>/dev/null; then
  echo "Installing lazygit..."
  LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
  case "$(uname -m)" in
    x86_64) LAZYGIT_ARCH="x86_64" ;;
    aarch64|arm64) LAZYGIT_ARCH="arm64" ;;
    *) echo "Unsupported architecture: $(uname -m)"; exit 1 ;;
  esac
  curl -Lo /tmp/lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_${LAZYGIT_ARCH}.tar.gz"
  tar xf /tmp/lazygit.tar.gz -C /tmp lazygit
  sudo install /tmp/lazygit /usr/local/bin
  rm -f /tmp/lazygit /tmp/lazygit.tar.gz
fi

# antidote (zsh plugin manager)
if [ ! -d "$HOME/.antidote" ]; then
  echo "Installing antidote..."
  git clone --depth=1 https://github.com/mattmc3/antidote.git "$HOME/.antidote"
fi

# starship
if ! command -v starship &>/dev/null; then
  echo "Installing starship..."
  curl -sS https://starship.rs/install.sh | sh -s -- -y
fi

# Ensure config directories exist
mkdir -p "$HOME/.config/zsh"
mkdir -p "$HOME/.config/nvim"

# Symlink shell configs
echo "Linking shell configs..."
link_config "$DA_FILES/configs/zsh/.zshrc" "$HOME/.zshrc"
link_config "$DA_FILES/configs/zsh/aliases.zsh" "$HOME/.config/zsh/aliases.zsh"
link_config "$DA_FILES/configs/zsh/.zsh_plugins.txt" "$HOME/.config/zsh/.zsh_plugins.txt"
link_config "$DA_FILES/configs/starship.toml" "$HOME/.config/starship.toml"

# Neovim: LazyVim starter
if [ ! -d "$HOME/.config/nvim/.git" ]; then
  echo "Installing LazyVim starter..."
  rm -rf "$HOME/.config/nvim"
  git clone https://github.com/LazyVim/starter "$HOME/.config/nvim"
fi

# Symlink LazyVim customizations
link_config "$DA_FILES/configs/neovim/theme.lua" "$HOME/.config/nvim/lua/plugins/theme.lua"
link_config "$DA_FILES/configs/neovim/transparency.lua" "$HOME/.config/nvim/plugin/after/transparency.lua"
link_config "$DA_FILES/configs/neovim/lazyvim.json" "$HOME/.config/nvim/lazyvim.json"

# Disable LazyVim update notification popup
sed -i 's/checker = { enabled = true }/checker = { enabled = true, notify = false }/g' "$HOME/.config/nvim/lua/config/lazy.lua"

# Set zsh as default shell if not already
if [ "$SHELL" != "$(command -v zsh)" ]; then
  echo "Setting zsh as default shell..."
  sudo chsh -s "$(command -v zsh)" "$USER"
fi

echo "WSL terminal setup complete."
