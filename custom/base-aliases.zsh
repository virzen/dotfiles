alias a='atom'
alias v='vim'

alias vimrc='vim ~/.vimrc'
alias zshrc='vim ~/.zshrc'

alias restart='exec zsh'

alias testping='ping 8.8.8.8'
alias wifi_re='sudo ifconfig en0 down && sudo ifconfig en0 up'

bs() {
  browser-sync start --server --files '**' --no-online --no-open $@ &
}

alias fstart='foreman start -f Procfile.dev'

alias rserv='bundle exec rails server'
alias rmg='rails db:migrate RAILS_ENV=development'

alias pubkey='cat ~/.ssh/id_rsa.pub | pbcopy && echo "Public key copied to clipboard!"'
