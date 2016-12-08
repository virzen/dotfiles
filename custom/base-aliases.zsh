alias a='atom'
alias v='vim'

alias vimrc='vim ~/.vimrc'

alias restart='exec zsh'

bs() {
  browser-sync start --server --files '**' --no-online --no-open $@ &
}

alias rserv='bundle exec rails server'
alias rmg='rails db:migrate RAILS_ENV=development'

alias pubkey='cat ~/.ssh/id_rsa.pub | pbcopy && echo "Public key copied to clipboard!"'
