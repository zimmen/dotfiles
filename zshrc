# completion
autoload -Uz compinit
compinit

# load custom executable functions
for function in ~/.zsh/functions/*; do
  source $function
done

# ensure dotfiles bin directory is loaded first                                  
export PATH="$HOME/.bin:/usr/local/sbin:$HOME/.composer/vendor/bin:$PATH"

# makes color constants available
autoload -U colors
colors

# enable colored output from ls, etc
export CLICOLOR=1
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"

# history settings
setopt hist_ignore_all_dups inc_append_history
HISTFILE=~/.zhistory
HISTSIZE=4096
SAVEHIST=4096

# awesome cd movements from zshkit
setopt autocd autopushd pushdminus pushdsilent pushdtohome cdablevars
DIRSTACKSIZE=5

# Enable extended globbing
setopt extendedglob

source "$HOME/.antigen/antigen.zsh"

antigen use oh-my-zsh
antigen bundle unixorn/autoupdate-antigen.zshplugin
antigen bundle arialdomartini/oh-my-git
antigen bundle akoenig/gulp.plugin.zsh
antigen theme ys
antigen bundle git
antigen bundle node
antigen bundle npm
antigen bundle vagrant
antigen bundle sudo
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply

# Include local zsh config
source ~/.zshrc.local

# Include aliases
[[ -f ~/.aliases ]] && source ~/.aliases

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

fortune | cowsay