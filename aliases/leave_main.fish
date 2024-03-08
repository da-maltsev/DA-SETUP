function leave_main --wraps='git branch | grep -v main | xargs git branch -D' --description 'alias leave_main=git branch | grep -v main | xargs git branch -D'
  git branch | grep -v main | xargs git branch -D $argv; 
end
