export TERM=xterm-256color
export EDITOR=nvim

source /opt/homebrew/share/antidote/antidote.zsh
antidote load

eval "$(starship init zsh)"

source ~/.config/zsh/aliases.zsh
