# FIXME: use relative path instead of hardcoding it
export DOTFILES_DIR=$HOME/Workspace/dotfiles


#=== ZSH settings ===#
zstyle ':completion:*' menu select


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
#plugins=(git brew osx git-extras history zsh-syntax-highlighting z zsh-nvm)
export NVM_LAZY_LOAD=true

source ~/.zplug/init.zsh
zplug "denysdovhan/spaceship-zsh-theme", as:theme
zplug "djui/alias-tips"
zplug "lukechilds/zsh-nvm"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search", defer:2
zplug "knu/z", use:z.sh, defer:2

# Install packages that have not been installed yet
if ! zplug check --verbose; then
  zplug install
fi

zplug load


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
