#=== Path to oh-my-zsh installation ===#
export ZSH=$HOME/.oh-my-zsh

# FIXME
export ZSH_CUSTOM=$HOME/Workspace/dotfiles/custom

export NVM_LAZY_LOAD=true
plugins=(git brew osx git-extras hub history zsh-syntax-highlighting z zsh-nvm)


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


#=== Special treatment for zsh-syntax-highlighting plugin ===#
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


#=== fzf ===#
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_OPTS='--height 40%'
export FZF_DEFAULT_COMMAND='ag -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_COMPLETION_TRIGGER=''
