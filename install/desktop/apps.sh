if [ -z "${CI:-}" ]; then
  brew install --cask brave-browser
  brew install --cask 1password
  brew install 1password-cli
  brew install --cask telegram-desktop
  brew install --cask cursor
fi
