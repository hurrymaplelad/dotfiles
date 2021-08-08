#####################################
# .zshrc
# Adam Hull
# zsh interactive shell configuration
#####################################

# add custom functions to fpath
fpath=(~/.zsh/functions $fpath)

# prezto
source ~/.zprezto/init.zsh

# direnv
(( $+commands[direnv] )) && eval "$(direnv hook zsh)"

# Bump maximum number of file descriptor for
# dev tasks watching large repos.
ulimit -n 10000

# -------
# Aliases
# -------

# default vim to open multiple files in tabs
alias vim='vim -p'
alias mvim='mvim -p'

# Add wmv for moving files with wildcards
autoload zmv
alias wmv='noglob zmv -W'

# Reset silly prezto aliases
unalias rm
unalias ls

# Differentaite files and directories with suffixes, not colors
alias ls="ls -F"

# Use zsh run-help for detailed help with built in commands
export HELPDIR=/usr/share/zsh/$ZSH_VERSION/help
unalias run-help
autoload -Uz run-help
alias help=run-help
alias man=run-help

# Fancy cd

# Change directories by typing their names. No `cd` required.
setopt autocd

# clear screen and list first couple files
autoload pls

# This is a special function name recognized by zsh
# autoload chpwd

# Easily switch projects
prj() { cd ~/Projects/$1 }
compctl -W ~/Projects -/ prj

# Dont offer to correct my typos, I need to learn from the pain of retyping
setopt nocorrect

# -----------
# Keybindings
# -----------
# history-substring-search provided by prezto
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Show man pages mid-command
bindkey '^h' run-help

# Reduce delay switching to vi edit mode
export KEYTIMEOUT=1

# -------
# History
# -------
setopt hist_ignore_dups

# --------------------
# Virtual environments
# --------------------

# Adds to the beginning of the PATH
#   Must go in zshrc instead of zshenv to outrank 
#   MacOS /etc/zprofile
eval "$(nodenv init - --no-rehash)"
# Rehash in the background for faster startup
(nodenv rehash &) &> /dev/null