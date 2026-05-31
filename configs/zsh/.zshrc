export TERM=xterm-256color
export EDITOR=nvim

source /opt/homebrew/share/antidote/antidote.zsh
antidote load ~/.config/zsh/.zsh_plugins.txt

eval "$(fzf --zsh)"

eval "$(starship init zsh)"

source ~/.config/zsh/aliases.zsh
