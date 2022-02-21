export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$HOME/.poetry/bin:$PATH"

eval "$(pyenv init --path)"

source ~/.aliases
source ~/.config/antigen.zsh
source ~/.profile
source ~/.poetry/env

antigen bundle danielefongo/shapeshift
antigen bundle git
antigen bundle autojump
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply
shape-shift AlessioCoser/shapeshift-theme

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
