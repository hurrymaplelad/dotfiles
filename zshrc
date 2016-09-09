#####################################
# .zshrc
# Adam Hull
# zsh interactive shell configuration
#####################################

# add custom functions to fpath
fpath=(~/.zsh/functions $fpath)

# prezto
source ~/.zprezto/init.zsh

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

# -------
# History
# -------
setopt hist_ignore_dups
