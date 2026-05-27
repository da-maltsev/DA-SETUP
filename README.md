# DA SETUP

My macOS setup inspired by DHH's [Omakub](https://github.com/basecamp/omakub).

## One-command setup

```bash
git clone --depth=1 https://github.com/da-maltsev/da-setup.git ~/.local/share/da-files && ~/.local/share/da-files/bootstrap.sh
```

## What's inside

- **Shell**: zsh with aliases (git shortcuts, eza, nvim, podman, etc.)
- **Terminal**: Ghostty with macOS-native keybindings and 75% opacity
- **Editor**: Neovim with LazyVim, Catppuccin theme, Python extras
- **Prompt**: Starship with Catppuccin Mocha theme
- **Python**: uv package manager
- **Container**: Podman with Rosetta for Apple Silicon
- **CLI tools**: fzf, ripgrep, bat, eza, btop, tldr, lazygit, fastfetch
- **Font**: JetBrains Mono Nerd Font
- **Apps**: Brave Browser, 1Password (with CLI), Telegram, Cursor
- **Other**: Opencode CLI

## macOS defaults applied

- Fast key repeat (no press-and-hold)
- Tap to click and three finger drag
- Show hidden files, path bar, and status bar in Finder
- Screenshots saved to ~/Downloads
- Expanded save/print dialogs by default
