#  I GOT DEEP IN [OMARCHY](https://github.com/basecamp/omarchy) (SO THIS REPO WILL BE JSUT MY DOTFILES)

## DA SETUP

My humble setup for fresh [Fedora Workstation](https://fedoraproject.org/workstation/) strongly inspired by DHH's [Omakub](https://github.com/basecamp/omakub/tree/master)

<details><summary>other distros</summary>probably gonna work on other Linux distributions with GNOME desktop environment and DNF package manager
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
- [ghostty](https://ghostty.org/) as main terminal
- [neovim](https://neovim.io/) with [lazyvim](https://www.lazyvim.org/) base setup
- [mise](https://mise.jdx.dev/dev-tools/) for simple dev tools management
- some gnome extensions for better GNOME experience (tiling, keyboard navigation, etc.) see [hotkeys](https://github.com/da-maltsev/da-files/blob/master/install/desktop/gnome-hotkeys.sh)
