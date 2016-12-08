#=== git ===#
alias gst='git status'
alias gs='git status --short'

alias ga='git add'
alias gaa='git add --all'
alias gap='git add --patch'

alias gc='git commit'
alias gcm='git commit -m'
alias gca='git commit -a'
alias gcam='git commit -am'

alias gr='git reset'
alias grs='git reset --soft'
alias grh='git reset --hard'

alias gu='git undo'

alias gl='git log --oneline'
alias gll='git log'

alias gco='git checkout'
alias gcob='git checkout -b'
alias pages='git checkout gh-pages'
alias master='git checkout master'

alias gd='git diff'
alias gds='git diff --staged'

alias gsh='git show'

alias gst='git stash'
alias gsts='git stash save'
alias gstp='git stash pop'
alias gstl='git stash list'
alias gstsh='git stash show -p'

alias gcl='git clone'

alias gm='git merge'
alias gms='git merge --squash'

alias gpl='git pull'

alias gps='git push'
alias gpsnv='git push --no-verify'
gpsuc() {
  if CURRENT_BRANCH_NAME=$(git symbolic-ref --short -q HEAD) then
    git push -u origin $CURRENT_BRANCH_NAME
  else
    echo "Cannot detect current branch."
  fi
}
