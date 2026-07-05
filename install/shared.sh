# Shared helpers for da-files installers

set -e

DA_FILES="${DA_FILES:-$HOME/.local/share/da-files}"

link_config() {
  local source="$1"
  local target="$2"

  mkdir -p "$(dirname "$target")"

  if [ -L "$target" ]; then
    rm "$target"
  elif [ -e "$target" ]; then
    mv "$target" "$target.backup.$(date +%s)"
  fi

  ln -s "$source" "$target"
}

is_wsl() {
  [ -f /proc/sys/fs/binfmt_misc/WSLInterop ] || [ -n "${WSL_DISTRO_NAME:-}" ]
}
