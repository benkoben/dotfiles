

autoload -Uz compinit
compinit

[[ $commands[kubectl] ]] && source <(kubectl completion zsh)
[[ $commands[helm] ]] && source <(helm completion zsh)
