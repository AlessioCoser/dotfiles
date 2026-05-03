# === Plugin manager (Zap) ===
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zsh-users/zsh-syntax-highlighting"
plug "zsh-users/zsh-history-substring-search"

# === History ===
HISTSIZE=50000
SAVEHIST=50000
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt SHARE_HISTORY

# === Completion system ===
autoload -Uz compinit; compinit -i

# === Tools (PATH, hooks, completions on-demand) ===
eval "$(mise activate zsh)"
eval "$(zoxide init zsh)"
source <(fzf --zsh)

# === Prompt ===
eval "$(starship init zsh)"

# === Keybindings & plugin config ===
HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=1
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Common terminal escape sequences (Home/End/Canc, word navigation)
bindkey '^[[H'  beginning-of-line     # Home (xterm)
bindkey '^[[1~' beginning-of-line     # Home (linux/rxvt)
bindkey '^[[7~' beginning-of-line     # Home (rxvt-unicode)
bindkey '^[[F'  end-of-line           # End  (xterm)
bindkey '^[[4~' end-of-line           # End  (linux/rxvt)
bindkey '^[[8~' end-of-line           # End  (rxvt-unicode)
bindkey '^[[3~' delete-char           # Canc / Delete
bindkey '^[[1;5C' forward-word        # Ctrl+Right
bindkey '^[[1;5D' backward-word       # Ctrl+Left
bindkey '^[[1;3C' forward-word        # Alt+Right
bindkey '^[[1;3D' backward-word       # Alt+Left
bindkey '^[[1;2C' forward-word        # Shift+Right
bindkey '^[[1;2D' backward-word       # Shift+Left

# === User config ===
[ -f "$HOME/.zsh_aliases" ] && source "$HOME/.zsh_aliases"

eval $(thefuck --alias)
