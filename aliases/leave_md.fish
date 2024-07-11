function leave_md
  gcod
  git branch --list | grep -v 'develop\|main\|master' | xargs git branch -D
end
