# Enable RPM Fusion repositories for additional packages
sudo dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
  https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Run desktop installers
sudo dnf install -y google-chrome-stable telegram-desktop \
  vlc gnome-tweaks wl-clipboard \
  bitwarden steam vscode clutter

for installer in ~/.local/share/da-files/install/desktop/*.sh; do source $installer; done
