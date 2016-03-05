#
# zsh configuration
#  - usually run for every zsh
#  - this file is committed.  Use .zshenv.local for machine specific or sensitive vars
#####################################

# --------------------
# Path
# --------------------

# only add things that aren't there
typeset -U path
# add more to $PATH as an array
path=(
  /usr/local/bin
  $path
)

# Default text editor
export EDITOR=/usr/bin/vim

# Setup Golang
export GOPATH="$HOME/Projects/go"

# Re-point `apm develop`
export ATOM_REPOS_HOME="$HOME/Projects"

# Setup path for Apache Spark installed via Homebrew
export SPARK_HOME=$(brew --prefix apache-spark)/libexec

# Prefer homebrew Java
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_51.jdk/Contents/Home/jre"

# Add GHC 7.8.3 to the PATH, via http://ghcformacosx.github.io/
export GHC_DOT_APP="/Applications/ghc-7.8.3.app"


# --------------------
# Virtual environments
# --------------------
# These add to the beginning of the PATH
eval "$(nodenv init -)"
eval "$(rbenv init -)"

# --------------------
# More Path
# --------------------

# add more to $PATH as an array
path=(
  /usr/local/bin
  /usr/local/sbin
  /usr/texbin
  $JAVA_HOME/bin
  ./node_modules/.bin
  $path
  $GOPATH/bin
  $HOME/.cabal/bin
  $GHC_DOT_APP/Contents/bin
)

# Include local overrides
test -f ~/.zshenv.local && source ~/.zshenv.local
