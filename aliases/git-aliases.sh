#=== git ===#
alias gs='git status --short'
alias gsl='git status'

alias ga='git add'
alias gaa='git add --all'
alias gap='git add --patch'
alias gaN='git add -N'
alias gaNa='git add -N .'

alias gc='git commit --verbose'
alias gcm='git commit --verbose -m'
alias gc!='git commit --verbose --amend'
alias gca='git commit --verbose --amend'
alias gcnv='git commit --no-verify'
alias gcae='git commit --allow-empty'

alias gr='git reset'
alias grp='git reset --patch'
alias grs='git reset --soft'
alias grh='git reset --hard'

alias gu='git undo'

alias gbs='git bisect'

alias gl="git log --graph --pretty=format:'%Cred%h%Creset
-%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias glm='git log --oneline --author="Wiktor Czajkowski"'
alias gll='git log'

alias gco='git checkout'
alias gcob='git checkout -b'
alias gcom='git checkout master'
alias gcor='git checkout redesign'

alias gb='git branch'
alias gbd='git branch -d'

alias gd='git diff'
alias gds='git diff --staged'

alias gsh='git show'

alias gst='git stash save'
alias gstu='git stash save -u'
alias gstki='git stash save --keep-index'
alias gsta='git stash apply'
alias gstd='git stash drop'
alias gstp='git stash pop'
alias gstl='git stash list'
alias gstsh='git stash show -p'

alias gpl='git pull'

alias gps='git push'
alias gpsnv='git push --no-verify'

alias grb='git rebase'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grbi='git rebase -i'
alias grbicb='git rebase -i `git merge-base HEAD master`'

alias gm='git merge'
alias gms='git merge --squash'
alias gmfm='git fetch && git merge origin/master'
alias gmfr='git fetch && git merge origin/redesign'

alias gcl='git clone'

# Push current branch to origin with tracking
gpsuc() {
  if CURRENT_BRANCH_NAME=$(git symbolic-ref --short -q HEAD) then
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
