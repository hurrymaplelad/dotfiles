#
# zsh configuration
#  - usually run for every zsh
#####################################

# default text editor (gdb and others)
export EDITOR=/usr/bin/vim

export GOPATH=$HOME/Projects/go

# Prefer homebrew Java
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_51.jdk/Contents/Home/jre"

# only add things that aren't there
typeset -U path
# add to $PATH as an array
path=(
  /usr/local/bin
  /usr/local/sbin
  $JAVA_HOME/bin
  $path
  $GOPATH/bin
)
