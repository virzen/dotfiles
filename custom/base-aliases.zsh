#=== terminal window ===#
alias cl='clear'
alias restart='exec zsh'

#=== ssh ===#
alias pubkey='cat ~/.ssh/id_rsa.pub | pbcopy && echo "Public key copied to clipboard!"'

#=== editors ===#
alias a='atom'
alias v='vim'

#=== browser sync ===#
bs() {
  browser-sync start --server --files '**' --no-online --no-open $@ &
}

#=== rails ===#
alias rserv='bundle exec rails server'
alias rmg='rails db:migrate RAILS_ENV=development'
