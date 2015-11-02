#####################################
# .zshrc
# Adam Hull
# zsh interactive shell configuration
#####################################

# Bump maximum number of file descriptor for
# dev tasks watching large repos.
ulimit -n 10000

# Change directories by typing their names. No `cd` required.
setopt autocd

# Load version control stats for prompt
setopt prompt_subst
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git*' formats " %F{8}(%b)%f"
precmd() {
  vcs_info
}

# customize the prompt
export PROMPT='%B%3c${vcs_info_msg_0_}%(!.#.$)%b '

# use vi style keybindings
bindkey -v

# bind history search
bindkey "^R" history-incremental-search-backward

eval "$(nodenv init -)"

# add custom functions to fpath
fpath=(~/.zsh/functions $fpath)

# default vim to open multiple files in tabs
alias vim='vim -p'
alias mvim='mvim -p'

# Call our custom chpwd() function every time
# we change directories.  This is a special
# function name recognized by zsh.
autoload chpwd

# clear screen and list first couple files
autoload pls

# Add wmv for moving files with wildcards
autoload zmv
alias wmv='noglob zmv -W'

# for building custom completions, verbose completion
zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*' group-name ''

# load and enable completion
autoload -U compinit
compinit

# The following lines were added by compinstall

zstyle ':completion:*' completer _complete
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}'
zstyle :compinstall filename '/Users/adam/.zshrc'

# End of lines added by compinstall

# added by travis gem
[ -f /Users/adam/.travis/travis.sh ] && source /Users/adam/.travis/travis.sh
