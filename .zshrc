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

HISTSIZE=100000               # How many lines of history to keep in memory
HISTFILE=~/.zsh_history     # Where to save history to disk
SAVEHIST=100000               # Number of history entries to save to disk
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

# Go development
# =============================================================================
#export GOPATH="${HOME}/.go"
#export GOROOT="$(brew --prefix golang)/libexec"
#export GOBIN="${GOPATH}/bin"
#export PATH="$PATH:${GOBIN}:${GOROOT}/bin"
#test -d "${GOPATH}" || mkdir "${GOPATH}"
#test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"

export NODE_ENV=development

autoload -U +X bashcompinit && bashcompinit

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export GOOGLE_APPLICATION_CREDENTIALS="/Users/jerome/workspace/cooking-strava/gcloud-storage-keys.json"

export CPPFLAGS=-I/usr/local/opt/openssl/include
export LDFLAGS=-L/usr/local/opt/openssl/lib

ssh-add ~/.ssh/id_ed25519_hiki

source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"
