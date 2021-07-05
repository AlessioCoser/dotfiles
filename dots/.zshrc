export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
export PATH="/usr/local/Cellar:$PATH"

source ~/.aliases
source ~/.config/antigen.zsh
source ~/.profile

antigen bundle danielefongo/shapeshift
antigen bundle git
antigen bundle autojump
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply
shape-shift AlessioCoser/shapeshift-theme