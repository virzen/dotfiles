#=== Path to oh-my-zsh installation ===#
export ZSH=$HOME/.oh-my-zsh

# FIXME
export ZSH_CUSTOM=$HOME/Workspace/dotfiles/custom


plugins=(git brew osx git-extras hub history zsh-syntax-highlighting z)


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


#=== Oh My Zsh stuff ===#
DISABLE_UPDATE_PROMPT=true
source $ZSH/oh-my-zsh.sh


#=== Default editor ===#
export VISUAL=vim
export EDITOR="$VISUAL"


#=== rvm ===#
export PATH="$PATH:$HOME/.rvm/bin"


#=== nvm ===#
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"


#=== Special treatment for zsh-syntax-highlighting plugin ===#
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


#=== fzf ===#
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_COMPLETION_TRIGGER=''
bindkey '^T' fzf-completion
bindkey '^I' $fzf_default_completion
