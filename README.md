# DA SHELL

My minimal WSL Ubuntu shell setup: zsh, plugins, aliases, history search, Starship, and Neovim.

> The previous macOS version is preserved under the [`macos-legacy`](https://github.com/da-maltsev/da-setup/releases/tag/macos-legacy) tag.

## One-command setup (inside WSL Ubuntu)

```bash
git clone --depth=1 https://github.com/da-maltsev/da-setup.git ~/.local/share/da-files && ~/.local/share/da-files/bootstrap.sh
```

Restart your terminal or run `exec zsh` afterwards.

## What's inside

- **Shell**: zsh with antidote plugin manager
- **Plugins**: zsh-autosuggestions, zsh-completions, fzf-tab, colored-man-pages, zsh-syntax-highlighting
- **History**: shared history, deduplication, ↑ / ↓ search
- **Prompt**: Starship — `last-dir git-branch git-status venv ❯`
- **Editor**: Neovim with LazyVim starter, Catppuccin theme, transparent background, Python extras
- **CLI tools**: eza, fzf, ripgrep, bat, lazygit

## Windows font

For the best prompt / Neovim icon rendering, install JetBrains Mono Nerd Font on Windows:

```powershell
.\windows\install-font.ps1
```

Then select it in Windows Terminal settings.

## Customizing

Configs are symlinked from `~/.local/share/da-files/configs/`. Edit them there and restart zsh.

## Going back to the macOS version

```bash
git clone --depth=1 --branch macos-legacy https://github.com/da-maltsev/da-setup.git
```
