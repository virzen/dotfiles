# git
alias gst='git status'
alias gs='git status --short'

alias gc='git commit'
alias gcm='git commit -m'
alias gca='git commit -a'
alias gcam='git commit -am'

alias gl='git log --oneline'
alias gll='git log'

alias gco='git checkout'
alias gcob='git checkout -b'
alias pages='git checkout gh-pages'
alias master='git checkout master'

alias gd='git diff'
alias gds='git diff --staged'

alias topages='git push && git checkout gh-pages && git merge master && git push && git checkout master'
alias gcl='git clone'
alias gpl='git pull'
alias gps='git push'
alias gm='git merge'

ga() {
	git add $@
	gs
}
gap() {
	ga -p $@
}
gaa() {
	ga . $@
}
gaap() {
	ga -p . $@
}
gr() {
	git reset $@
}

# terminal window
alias cls='clear'
alias relog='bash --login'

# atom editor
alias ai='apm install'
alias ar='apm remove'
alias au='apm update'

# browser sync
bs() {
	browser-sync start --server --files '**' --no-online --no-open $@ &
}
