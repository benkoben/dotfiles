if [ "$TMUX" = "" ]; then tmux; fi

source_if_exists () {
    if test -r "$1"; then
        source "$1"
    fi
}

export VISUAL=nvim
export EDITOR=nvim
export PATH="$PATH:/usr/local/sbin:$DOTFILES/bin:$HOME/.local/bin"
export KUBECONFIG=/Users/kooijman/.kube/config.yaml
export ZSH="$HOME/.oh-my-zsh"
export PATH=$PATH:/usr/local/go/bin

source_if_exists $ZSH/oh-my-zsh.sh
source_if_exists $HOME/.env.sh
source_if_exists $HOME/powerlevel10k/powerlevel10k.zsh-theme
source_if_exists $DOTFILES/zsh/history.zsh
source_if_exists $DOTFILES/zsh/autocomplete.zsh
source_if_exists $DOTFILES/zsh/git.zsh
source_if_exists $DOTFILES/zsh/aliases.zsh
source_if_exists $DOTFILES/zsh/powerlevel10k.zsh-theme
source_if_exists $DOTFILES/zsh/p10k.zsh
source_if_exists $DOTFILES/zsh/plugins.zsh
source_if_exists $DOTFILES/zsh/functions.zsh
source_if_exists $DOTFILES/zsh/paths.zsh
source_if_exists ~/.fzf.zsh

autoload -U zmv
autoload -U promptinit && promptinit
autoload -U colors && colors
autoload -Uz compinit && compinit



source <(kubectl completion zsh)
