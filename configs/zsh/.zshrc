export TERM=xterm-256color
export EDITOR=nvim

# History
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS

# Completion
autoload -Uz compinit && compinit

# fzf integration (Ubuntu package paths)
if [ -f /usr/share/doc/fzf/examples/key-bindings.zsh ]; then
  source /usr/share/doc/fzf/examples/key-bindings.zsh
fi
if [ -f /usr/share/doc/fzf/examples/completion.zsh ]; then
  source /usr/share/doc/fzf/examples/completion.zsh
fi

# Antidote plugin manager
source "$HOME/.antidote/antidote.zsh"
antidote load

# Starship prompt
eval "$(starship init zsh)"

# Aliases
source "$HOME/.config/zsh/aliases.zsh"

# Expose active venv name to Starship
function _update_venv_name {
  if [ -n "$VIRTUAL_ENV" ]; then
    export VENV_NAME="$(basename "$VIRTUAL_ENV")"
  else
    unset VENV_NAME
  fi
}
precmd_functions+=(_update_venv_name)

# History search with arrow keys
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# Add ~/.local/bin to PATH if not already there
if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
  export PATH="$HOME/.local/bin:$PATH"
fi
