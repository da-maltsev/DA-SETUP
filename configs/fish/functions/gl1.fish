function gl1 --wraps='git log --pretty=format:"%C(yellow)%h %Cred%ad %C(white)%an%C(red)%d %C(green)%s" --graph' --description 'alias gl1=git log --pretty=format:"%C(yellow)%h %Cred%ad %C(white)%an%C(red)%d %C(green)%s" --graph'
  git log --pretty=format:"%C(yellow)%h %Cred%ad %C(white)%an%C(red)%d %C(green)%s" --graph $argv; 
end
