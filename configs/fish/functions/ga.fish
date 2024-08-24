function ga --wraps='git add' --description 'alias ga=git add'
  if test -d .git
     git add $argv;
  else
    echo "Current directory does not contain a .git folder. Cannot run git add."
  end
end
