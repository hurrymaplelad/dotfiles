#
# ZSH configuration
#  - Usually run for every zsh
#  - This file is committed to dotfiles. 
#  - Use .zprofile or .zshenv.local (not comitted) for machine specific or sensitive vars
#####################################

# Default text editor
export EDITOR=/usr/bin/vim

# --------------------
# Path
# --------------------

# Add brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# only add things that aren't there
typeset -U path
# add more to $PATH as an array
# path=(
#   /usr/local/bin
#   $path
# )

# Include local overrides
test -f ~/.zshenv.local && source ~/.zshenv.local
