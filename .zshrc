# Aliases
set editing-mode vi

# nvm install node --reinstall-packages-from=node
# alias vim=/usr/local/bin/vim
alias vim=nvim
alias conf='cd ~/.config/nvim'
alias swp="cd ~/.local/share/nvim/swap"

ipaddr() { (awk '{print $2}' <(ifconfig en0 | grep 'inet ')); }

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/lukehalasy/.oh-my-zsh"

export JAVA_HOME="/usr/local/opt/java"
export PATH=$PATH:$JAVA_HOME/bin

#export PATH=$PATH:/usr/bin/python
#alias python=python3
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

unsetopt BEEP
# export NVM_DIR="$HOME/.nvm"
# source $(brew --prefix nvm)/nvm.sh

# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# export NVM_LAZY_LOAD=true

plugins=(
  git
)

ZSH_THEME=""
source $ZSH/oh-my-zsh.sh

autoload -U promptinit; promptinit

prompt pure
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
export PATH=$PATH:/Users/lukehalasy/go/bin
export GOPATH=~/go
export PATH=$PATH:/usr/local/go/bin

# autojump configuration
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

export PATH=$HOME/bin:/usr/local/bin:$PATH
#export PATH=$PATH:/Library/Frameworks/Python.framework/Versions/3.9/bin

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/lukehalasy/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/lukehalasy/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/lukehalasy/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/lukehalasy/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
conda config --set auto_activate_base false

#alias qtEnv='. /Users/lukehalasy/opt/anaconda3/bin/activate && conda activate /Users/lukehalasy/opt/anaconda3/envs/QtTutorial;'
#alias visEnv='. /Users/lukehalasy/opt/anaconda3/bin/activate && conda activate /Users/lukehalasy/opt/anaconda3/envs/visEnv;'
# [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh --no-use

export PATH=$PATH:/usr/local/Cellar/node/17.0.1
export PATH="/usr/local/opt/hdf5@1.10/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/lukehalasy/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/lukehalasy/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/lukehalasy/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/lukehalasy/google-cloud-sdk/completion.zsh.inc'; fi
