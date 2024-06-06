function venvf --wraps='source .venv/bin/activate.fish' --description 'alias venvf source .venv/bin/activate.fish'
  source .venv/bin/activate.fish $argv; 
end
