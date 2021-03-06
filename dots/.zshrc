export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
export PATH="/usr/local/Cellar:$PATH"

source ~/.aliases
source /usr/local/share/antigen/antigen.zsh

antigen bundle AlessioCoser/zsh_aws_aliases
antigen bundle danielefongo/shapeshift
antigen bundle git
antigen bundle autojump
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply
shape-shift AlessioCoser/shapeshift-theme
