# Ensure computer doesn't go to sleep or lock while installing
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.session idle-delay 0

# Run desktop installers
yay -S google-chrome localsend telegram-desktop \
  vlc yandex-music sushi gnome-tweaks wl-clipboard \
  bitwarden steam zed vscode

for installer in ~/.local/share/da-files/install/desktop/*.sh; do source $installer; done

# Revert to normal idle and lock settings
gsettings set org.gnome.desktop.screensaver lock-enabled true
gsettings set org.gnome.desktop.session idle-delay 300
