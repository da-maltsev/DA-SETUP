set -e

source ~/.local/share/da-files/install/terminal/homebrew.sh

brew install fzf ripgrep bat eza btop fastfetch neovim antidote starship

source ~/.local/share/da-files/install/terminal/fonts.sh
source ~/.local/share/da-files/install/terminal/ghostty.sh
source ~/.local/share/da-files/install/terminal/uv.sh
source ~/.local/share/da-files/install/terminal/podman.sh
source ~/.local/share/da-files/install/terminal/lazygit.sh
source ~/.local/share/da-files/install/terminal/opencode.sh
source ~/.local/share/da-files/install/terminal/fastfetch.sh
source ~/.local/share/da-files/install/terminal/neovim.sh

mkdir -p ~/.config/zsh
cp ~/.local/share/da-files/configs/zsh/aliases.zsh ~/.config/zsh/aliases.zsh
cp ~/.local/share/da-files/configs/zsh/.zsh_plugins.txt ~/.config/zsh/.zsh_plugins.txt
cp ~/.local/share/da-files/configs/zsh/.zshrc ~/.zshrc
