# Set up the prompt

# ensure dotfiles bin directory is loaded first                                  
export PATH="$HOME/.bin:/usr/local/sbin:$HOME/.composer/vendor/bin:$PATH"

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

source "$HOME/.antigen/antigen.zsh"

antigen-use oh-my-zsh
antigen bundle unixorn/autoupdate-antigen.zshplugin
antigen-bundle arialdomartini/oh-my-git
antigen theme ys
antigen bundle git
antigen bundle node
antigen bundle npm
antigen bundle svn
antigen bundle vagrant
antigen bundle sudo
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply

# Include local zsh config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# Include aliases
[[ -f ~/.aliases ]] && source ~/.aliases

fortune | cowsay


