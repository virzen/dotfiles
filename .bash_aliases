# git
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

alias gst='git stash'
alias gsts='git stash save'
alias gstp='git stash pop'

alias topages='git push && git checkout gh-pages && git merge master && git push && git checkout master'
alias gcl='git clone'
alias gpl='git pull'
alias gpr='git pull --rebase'
alias gps='git push'
alias gprs='git pull --rebase && git push'
# alias gm='git merge'

# this section causes git in zsh to break
# ga() {
# 	git add $@
# 	gs
# }
# gap() {
# 	ga -p $@
# }
# gaa() {
# 	ga . $@
# }
# gaap() {
# 	ga -p . $@
# }
# gr() {
# 	git reset $@
# }

# terminal window
alias cls='clear'
# alias relog='bash --login'

# atom editor
alias ai='apm install'
alias ar='apm remove'
alias au='apm update'

# browser sync
bs() {
	browser-sync start --server --files '**' --no-online --no-open $@ &
}

# common
alias ws='cd ~/Workspace'
alias restart='exec zsh'
alias pubkey='cat ~/.ssh/id_rsa.pub | pbcopy && echo "Public key copied to clipboard!"'
alias off='sudo shutdown -h now'
alias rserv='bundle exec rails server'

# projects
alias whipper='wd whipper && gst && gprs && gstp && rserv'
