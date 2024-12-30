set SHELL /usr/bin/fish
export TERM=xterm-256color
if status is-interactive
    # Commands to run in interactive sessions can go here
    eval (zellij setup --generate-auto-start fish | string collect)
end
~/.local/bin/mise activate fish | source
starship init fish | source
