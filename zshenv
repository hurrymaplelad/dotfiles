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
# add brew first, so we can use it to build the rest of the path
path=(
  /usr/local/bin
  $path
)

# Default text editor
export EDITOR=/usr/bin/vim

# Setup Golang
export GOPATH="$HOME/Projects/go"

# Setup path for Apache Spark installed via Homebrew
# Should use $(brew --prefix apache-spark)/libexec, but brew --prefix slows down shell startup
export SPARK_HOME="/usr/local/Cellar/apache-spark/2.0.1/libexec"

# Prefer homebrew Java
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_51.jdk/Contents/Home/jre"

# Add GHC 7.8.3 to the PATH, via http://ghcformacosx.github.io/
export GHC_DOT_APP="/Applications/ghc-7.8.3.app"

# Prefer local chrome version to avoid repeated large downloads
export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=1

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

# --------------------
# Language environments
# --------------------

# OCaml opam
test -r ~/.opam/opam-init/init.zsh && . ~/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# Rust Cargo
test -d ~/.cargo && source ~/.cargo/env

# Include local overrides
test -f ~/.zshenv.local && source ~/.zshenv.local
