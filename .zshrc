for zsh_file ($HOME/zsh/*.zsh); do
  source $zsh_file
done
unset zsh_file

# Navigation
# =============================================================================

setopt AUTO_CD
setopt CDABLE_VARS
setopt CORRECT
setopt CORRECT_ALL
setopt EXTENDED_GLOB

# History
# =============================================================================

HISTSIZE=5000               # How many lines of history to keep in memory
HISTFILE=~/.zsh_history     # Where to save history to disk
SAVEHIST=5000               # Number of history entries to save to disk
setopt    appendhistory     # Append history to the history file (no overwriting)
setopt    sharehistory      # Share history across terminals
setopt    incappendhistory  # Immediately append to the history file, not just when a term is killed

# Completion
# =============================================================================

autoload -Uz compinit && compinit -i

setopt ALWAYS_TO_END
setopt AUTO_LIST
setopt AUTO_MENU
setopt AUTO_PARAM_SLASH
setopt COMPLETE_IN_WORD
setopt PATH_DIRS

WORDCHARS='*?_-.[]~&;!#$%^(){}<>'

# disable anonying auto correct de tes morts 
unsetopt correct_all

setopt share_history

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export PATH="$HOME/google-cloud-sdk/bin:$PATH"
export PATH="$HOME/bin:$PATH"
source <(kubectl completion bash)
ssh-add -K ~/.ssh/convargo

export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"

[[ -s "/Users/jduval/.gvm/scripts/gvm" ]] && source "/Users/jduval/.gvm/scripts/gvm"

# Go development
# =============================================================================
export GOPATH="${HOME}/.go"
#export GOROOT="$(brew --prefix golang)/libexec"
export GOBIN="${GOPATH}/bin"
export PATH="$PATH:${GOBIN}:${GOROOT}/bin"
test -d "${GOPATH}" || mkdir "${GOPATH}"
test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"
export NODE_ENV=development

autoload -U +X bashcompinit && bashcompinit
complete -C $GOBIN/jarvis jarvis
