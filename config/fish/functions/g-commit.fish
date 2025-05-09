function g-commit
  git log --oneline --reverse --decorate=short -50 | awk '{printf "HEAD~%d %s\n", NR, $0 }' | fzf --height=60% --layout reverse --border | awk '{print $2}' | read -l commit && git stash && git switch -d $commit
end
