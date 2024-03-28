function leave_master --wraps='git branch | grep -v master | xargs git branch -D' --description 'alias leave_master=git branch | grep -v master | xargs git branch -D'
  git branch | grep -v master | xargs git branch -D $argv; 
end
