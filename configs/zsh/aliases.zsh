# Git with .git guard
function ga {
  if [ -d .git ]; then
    git add "$@"
  else
    echo "Not a git repository."
  fi
}

function gp {
  if [ -d .git ]; then
    git pull "$@"
  else
    echo "Not a git repository."
  fi
}

alias gb='git branch'
alias gco='git checkout'
alias gcod='git checkout develop'
alias gcom='git checkout master'
alias gr='git rebase'
alias gs='git status'

function gc {
  git commit -m "$*"
}

function gl {
  git log --pretty=format:"%C(yellow)%h %Cred%ad %C(white)%an%C(red)%d %C(green)%s" --graph --all "$@"
}

function gl1 {
  git log --pretty=format:"%C(yellow)%h %Cred%ad %C(white)%an%C(red)%d %C(green)%s" --graph "$@"
}

function leave_md {
  local target=""
  for branch in develop main master; do
    if git show-ref --verify --quiet refs/heads/$branch; then
      target=$branch
      break
    fi
  done
  if [ -n "$target" ]; then
    git checkout $target
    git branch --list | grep -v "develop\|main\|master" | xargs git branch -D
  else
    echo "No develop, main, or master branch found."
  fi
}

alias dc='podman compose'
alias docker='podman'
alias lg='lazygit'

alias ls='eza --icons --group-directories-first'
alias lsa='eza --icons --group-directories-first -a'
alias lt='eza --tree --level=2 --long --icons --git'
alias lta='eza --tree --level=2 --long --icons --git -a'

alias n='nvim'

function vvv {
  source .venv/bin/activate
}


