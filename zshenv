#
# ZSH configuration
#  - Usually run for every zsh
#  - This file is committed to dotfiles. 
#    - Use .zshenv.local for machine specific or sensitive vars
#####################################

# --------------------
# Path
# --------------------

# only add things that aren't there
typeset -U path
# add more to $PATH as an array
# add brew first, so we can use it to build the rest of the path
path=(
  /usr/local/bin
  $path
)

# Default text editor
export EDITOR=/usr/bin/vim

# --------------------
# More Path
# --------------------

# add more to $PATH as an array
# path=(
#   $path
#   $GHC_DOT_APP/Contents/bin
# )

# --------------------
# Language environments
# --------------------

# OCaml opam
test -r ~/.opam/opam-init/init.zsh && . ~/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# Rust Cargo
test -d ~/.cargo && source ~/.cargo/env

# Include local overrides
test -f ~/.zshenv.local && source ~/.zshenv.local
