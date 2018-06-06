# Push current branch to origin with tracking
gpsuc() {
  if CURRENT_BRANCH_NAME=$(git symbolic-ref --short -q HEAD); then
    git push -u origin $CURRENT_BRANCH_NAME $@
  else
    echo "Cannot detect current branch."
  fi
}

# Fuzzy searching git branches
gcof() {
  local branches branch
  branches=$(git branch -vv) &&
  branch=$(echo "$branches" | fzf +m) &&
  git checkout $(echo "$branch" | awk '{print $1}' | sed "s/.* //")
}
