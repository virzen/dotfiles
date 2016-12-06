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
alias gpl='git pull'
alias gps='git push'
alias gpsnv='git push --no-verify'

#=== terminal window ===#
alias cl='clear'
alias restart='exec zsh'

#=== browser sync ===#
bs() {
	browser-sync start --server --files '**' --no-online --no-open $@ &
}

#=== ssh ===#
alias pubkey='cat ~/.ssh/id_rsa.pub | pbcopy && echo "Public key copied to clipboard!"'

#=== rails ===#
alias rserv='bundle exec rails server'
alias rmg='rails db:migrate RAILS_ENV=development'
