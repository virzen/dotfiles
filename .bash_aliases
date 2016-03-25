# git
alias gst='git status'
alias gs='git status --short'
alias gc='git commit'
alias gcm='git commit -m'
alias gca='git commit --amend'
alias glo='git log --oneline'
alias gl='git log'
alias gm='git merge'
alias gco='git checkout'
alias gcob='git checkout -b'
alias pages='git checkout gh-pages'
alias master='git checkout master'
alias gps='git push'
alias topages='git push && git checkout gh-pages && git merge master && git push && git checkout master'
alias gcl='git clone'
alias gpl='git pull'

ga() {
	git add $@; gs
}
gaa() {
	git add . $@; gs
}
gr() {
	git reset $@; gs
}

# terminal window
alias cls='clear'
alias relog='bash --login'

# firefox dev edition
alias ff='/home/virzen/.local/share/umake/web/firefox-dev/firefox'

# browser sync
bs() {
	browser-sync start --server --files '**' --no-online $@ &
}

# firefox search
sr() {
	ff -search "$(echo $@)"
}
