export DOTFILES_DIR="$HOME/Workspace/dotfiles"
export ZSH_CUSTOM="$HOME/Workspace/dotfiles/custom"
export ZSH="$HOME/.oh-my-zsh"
export PATH="$DOTFILES_DIR/bin:$HOME/homebrew/bin:$PATH"
source "$DOTFILES_DIR/variables.sh"


#=== Aliases ===#
source "$ALIASES_DIR/base-aliases.sh"
source "$ALIASES_DIR/git-aliases.sh"
if [[ -f "$ALIASES_DIR/secret-aliases.sh" ]]; then
  source "$ALIASES_DIR/secret-aliases.sh"
fi


#=== Theme ===#
ZSH_THEME="spaceship"
SPACESHIP_RUBY_SHOW="false"
SPACESHIP_VENV_SHOW="false"
SPACESHIP_NVM_SHOW="false"


#=== History ===#
HISTSIZE=32768;
HISTFILESIZE=$HISTSIZE;
HISTCONTROL=ignoredups;
HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help";
HIST_STAMPS="dd.mm.yyyy"


#=== Plugins ===#
plugins=(brew osx git-extras history zsh-syntax-highlighting z)


#=== Oh My Zsh stuff ===#
DISABLE_UPDATE_PROMPT=true
source "$ZSH/oh-my-zsh.sh"


#=== Default editor ===#
export VISUAL=vim
export EDITOR="$VISUAL"


#=== fzf ===#
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_OPTS='--height 40%'
export FZF_DEFAULT_COMMAND='ag --hidden --path-to-ignore ~/.ignore -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"


#=== Special treatment for zsh-syntax-highlighting and zsh-nvm plugins ===#
source "/usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"


#=== nvm ===#
load_nvm() {
  export NVM_DIR="$HOME/.nvm"
    . "/Users/virzen/homebrew/opt/nvm/nvm.sh"
}


#=== rvm ===#
export PATH="$PATH:$HOME/.rvm/bin"


#=== qt ===#
export PATH="$(brew --prefix qt@5.5)/bin:$PATH"
