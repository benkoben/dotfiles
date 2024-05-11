# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi
PROMPT="%F{103}%?%f %F{67}%n%f@%F{215}%~%f$: "
RPROMPT="%T"
if [ "$TMUX" = "" ]; then tmux; fi

source_if_exists () {
    if test -r "$1"; then
        source "$1"
    fi
}

export ZSH="$HOME/.oh-my-zsh"
export BROWSER=firefox
export VISUAL=nvim
export EDITOR=nvim
export PATH="$PATH:/usr/local/sbin:$DOTFILES/bin:$HOME/.local/bin:/System/Volumes/Data/Users/kooijman/go/bin"
export KUBECONFIG=~/.kube/config.yaml
export PATH=$PATH:/usr/local/go/bin:$HOME/bin
export PATH="$(brew --prefix)/opt/gnu-sed/libexec/gnubin:$PATH"

# source_if_exists $ZSH/oh-my-zsh.sh
source_if_exists $HOME/.env.sh
# source_if_exists $HOME/powerlevel10k/powerlevel10k.zsh-theme
source_if_exists $DOTFILES/zsh/history.zsh
# source_if_exists $DOTFILES/zsh/autocomplete.zsh
# source_if_exists $DOTFILES/zsh/git.zsh
source_if_exists $DOTFILES/zsh/aliases.zsh
#source_if_exists $DOTFILES/zsh/powerlevel10k.zsh-theme
#source_if_exists $DOTFILES/zsh/p10k.zsh
# source_if_exists $DOTFILES/zsh/plugins.zsh
source_if_exists $DOTFILES/zsh/functions.zsh
# source_if_exists $DOTFILES/zsh/paths.zsh
source_if_exists $DOTFILES/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source_if_exists ~/.fzf.zsh

# Linux stuff, wont work on my mac
# autoload -U zmv
# autoload -U promptinit && promptinit
# autoload -U colors && colors
# autoload -Uz compinit && compinit

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Generated for envman. Do not edit.
# [ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# added by Webi for pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
