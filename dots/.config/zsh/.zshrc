### ---- history config -------------------------------------
export HISTFILE=$ZDOTDIR/.zsh_history

# How many commands zsh will load to memory.
export HISTSIZE=10000

# How many commands history will save on file.
export SAVEHIST=10000

# History won't save duplicates.
setopt HIST_IGNORE_ALL_DUPS

# History won't show duplicates on search.
setopt HIST_FIND_NO_DUPS

# Incrementaly append history
setopt INC_APPEND_HISTORY

### ---- prompt config -------------------------------------
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"

### ---- settings-------------------------------------------
# Source aliaces
source ~/.config/aliases

# Source profile
source ~/.profile

# Complition
autoload -Uz compinit; compinit
zstyle ":completion:*" menu select

# Turn off all beeps
unsetopt BEEP

# Make delete key work
bindkey '^[[3~' delete-char

### ---- plugins--------------------------------------------
# Zsh-completion
fpath=(/usr/share/zsh/site-functions $fpath)

# Zsh-autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

### --------- END ------------------------------------------
# Zsh-syntax-highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Zsh-history-substring-search
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
