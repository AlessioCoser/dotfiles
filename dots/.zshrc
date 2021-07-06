export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"


source ~/.aliases
source ~/.config/antigen.zsh
source ~/.profile

antigen bundle danielefongo/shapeshift
antigen bundle git
antigen bundle autojump
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply
shape-shift AlessioCoser/shapeshift-theme