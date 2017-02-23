# FIXME: use relative path instead of hardcoding it
export DOTFILES_DIR=$HOME/Workspace/dotfiles
export ZSH_CUSTOM=$HOME/Workspace/dotfiles/custom
export ZSH=$HOME/.oh-my-zsh


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
plugins=(git brew osx git-extras history zsh-syntax-highlighting z zsh-nvm)


#=== Oh My Zsh stuff ===#
export NVM_LAZY_LOAD=true
DISABLE_UPDATE_PROMPT=true
source $ZSH/oh-my-zsh.sh


#=== Default editor ===#
export VISUAL=vim
export EDITOR="$VISUAL"


#=== Aliases ===#
source $DOTFILES_DIR/base-aliases.zsh
source $DOTFILES_DIR/git-aliases.zsh
source $DOTFILES_DIR/secret-aliases.zsh


#=== rvm ===#
export PATH="$PATH:$HOME/.rvm/bin"


#=== fzf ===#
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_OPTS='--height 40%'
export FZF_DEFAULT_COMMAND='ag --hidden -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
