function ls --wraps=eza --description 'alias ls=eza'
  eza --icons --group-directories-first $argv; 
end
