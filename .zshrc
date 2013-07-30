# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="fishy"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias git=hub
alias emacsclient="/Applications/Emacs.app/Contents/MacOS/bin/emacsclient"
alias emacs="/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -n"
alias mac="/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -n"
alias subl="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"
alias re="/Users/lucashansen/junk/re"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh
source $HOME/.rvm/scripts/rvm
source `brew --prefix`/etc/profile.d/z.sh

bindkey -s '^s' '^qz '
bindkey -s '^h' '^qcd ~-1\n'
bindkey -s '^u' '^qcd ~+1\n'

# Customize to your needs...
PROMPT='lucas %{$fg[$user_color]%}$(_fishy_collapsed_wd)%{$reset_color%}%(!.#.>) '

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export EDITOR="/Applications/Emacs.app/Contents/MacOS/bin/emacsclient"

unsetopt correct_all
unsetopt correct

rvm use 1.9.3 &> /dev/null 
