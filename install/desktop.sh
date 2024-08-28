# Run desktop installers
yay -S google-chrome telegram-desktop \
  vlc yandex-music sushi gnome-tweaks wl-clipboard \
  bitwarden steam zed vscode clutter

for installer in ~/.local/share/da-files/install/desktop/*.sh; do source $installer; done
