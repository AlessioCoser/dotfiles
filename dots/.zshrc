# === Plugin manager (Zap) ===
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zsh-users/zsh-syntax-highlighting"
plug "zsh-users/zsh-history-substring-search"

# === Completion system ===
autoload -Uz compinit; compinit

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

# === User config ===
[ -f "$HOME/.zsh_aliases" ] && source "$HOME/.zsh_aliases"
