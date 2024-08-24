function gp --wraps='git pull' --description 'use git pull if current dir has .git'
  if test -d .git
    git pull $argv
  else
    echo "Current directory does not contain a .git folder. Cannot run git pull."
  end
end
