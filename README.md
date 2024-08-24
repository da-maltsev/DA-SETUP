# DA SETUP

My humble setup for fresh [EOS with GNOME](https://endeavouros.com/) strongly inspired by DHH's [Omakub](https://github.com/basecamp/omakub/tree/master)

<details><summary>other distros</summary>probably gonna work on other Arch-based distros with gnome and yay
</details>

### To set everything up:

```bash
git clone --depth=1 https://github.com/da-maltsev/da-setup.git ~/.local/share/da-files
cd ~/.local/share/da-files
chmod +x boot.sh
./boot.sh
```

### What's inside

- [fish](https://fishshell.com/) shell with a bunch of [aliases](https://github.com/da-maltsev/da-files/tree/master/configs/fish/functions)
- [zellij](https://zellij.dev/) as terminal multiplexer
- [kitty](https://sw.kovidgoyal.net/kitty/) as main terminal
- [neovim](https://neovim.io/) with [lazyvim](https://www.lazyvim.org/) base setup
- [mise](https://mise.jdx.dev/dev-tools/) for simple dev tools management
- some gnome extensions for better GNOME experience (tiling, keyboard navigation, etc.) see [hotkeys](https://github.com/da-maltsev/da-files/blob/master/install/desktop/gnome-hotkeys.sh)
