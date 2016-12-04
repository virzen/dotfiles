# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM=$(pwd)
ZSH_THEME="spaceship"

# HYPHEN_INSENSITIVE="true"
# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

HIST_STAMPS="dd.mm.yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git brew osx git-extras hub history wd zsh-syntax-highlighting z)

# User configuration

SPACESHIP_RUBY_SHOW="false"
SPACESHIP_VENV_SHOW="false"
SPACESHIP_NVM_SHOW="false"

HISTSIZE=32768;
HISTFILESIZE=$HISTSIZE;
HISTCONTROL=ignoredups;
HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help";

source $ZSH/oh-my-zsh.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
source ~/.bash_aliases

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
