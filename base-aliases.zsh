export DOTFILES_DIR="$HOME/Workspace/dotfiles"


#=== Configs ===#
alias vimrc="vim ~/.vimrc"
alias zshrc="vim ~/.zshrc"


#=== Aliases ===#
# FIXME
alias bals="vim $DOTFILES_DIR/base-aliases.zsh"
alias gals="vim $DOTFILES_DIR/git-aliases.zsh"


#=== Shell ===#
alias restart="exec zsh"
alias :q="exit"
alias l="ls -la"


#=== File watching ===#
fsw() {
  fswatch $2 | xargs -n 1 $1
}
alias fswpy="fsw python"
alias fswpy3="fsw python3"

bs() {
  browser-sync start --server --files "**" --no-online --no-open $@ &
}


#=== Network ===#
alias testping="ping 8.8.8.8"
alias wifi_re="sudo ifconfig en0 down && sudo ifconfig en0 up"


#=== SSH ===#
alias pubkey="cat ~/.ssh/id_rsa.pub | pbcopy && echo "Public key copied to clipboard!""

ssh-generate() {
  if [ -z $1 ]; then
    echo "You must provide email adress as the first argument."
    return 1
  fi

  ssh-keygen -t rsa -b 4096 -C $1
  ssh-add ~/.ssh/id_rsa
  pubkey
}


#=== Rails ===#
alias rserv="bundle exec rails server"
alias rmg="rails db:migrate RAILS_ENV=development"
alias rmgt="rails db:migrate RAILS_ENV=test"
