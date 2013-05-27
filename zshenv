#
# zsh configuration
#  - usually run for every zsh
#####################################

# default text editor (gdb and others)
export EDITOR=/usr/bin/vim

# only add things that aren't there
typeset -U path
# add to $PATH as an array
path=(
  $path 
  $HOME/.rvm/bin
  #/Developer/usr/bin 
)

source ~/.bash_profile_includes/no_sudo_gem_install.sh
source ~/.bash_profile_includes/node.sh
source ~/.bash_profile_includes/rvm.sh
