#####################################
# .zshrc
# Adam Hull
# zsh interactive shell configuration
#####################################

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

# add custom functions to fpath
fpath=(~/.zsh/functions $fpath)

#default vim to open multiple files in tabs
alias vim='vim -p'
alias mvim='mvim -p'

# Customize cd:
# chpwd 
#   a function named chpwd gets executed by zsh
#   whenever the current working directory changes
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


[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh # This loads NVM
