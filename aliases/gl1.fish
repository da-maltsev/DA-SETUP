function gl1 --wraps='git log --pretty=format:"%C(yellow)%h %Cred%ad %C(white)%an%C(red)%d %C(green)%s" --date=short --graph' --description 'alias gl1=git log --pretty=format:"%C(yellow)%h %Cred%ad %C(white)%an%C(red)%d %C(green)%s" --date=short --graph'
  git log --pretty=format:"%C(yellow)%h %Cred%ad %C(white)%an%C(red)%d %C(green)%s" --date=short --graph $argv; 
end
