# aliases
alias mv='mv -v'
alias cp='cp -v'
alias ll='ls -la'
alias ipa='ip -c a'
alias zshrc='/usr/bin/vim ~/.zshrc'
alias vim=nvim
alias projects='nvim ~/Desktop/projects'
alias configs='nvim ~/.config'
alias k="kubectl"
alias t="terraform"

# M1 mac aliases 
alias funcx86='/usr/bin/arch -x86_64 /usr/local/bin/func'

# Mac setup for pomo
alias work="timer 60m && terminal-notifier -message 'Pomodoro'\
        -title 'Work Timer is up! Take a Break 😊'\
        -appIcon '~/Pictures/pumpkin.png'\
        -sound Crystal"

alias rest="timer 10m && terminal-notifier -message 'Pomodoro'\
        -title 'Break is over! Get back to work 😬'\
        -appIcon '~/Pictures/pumpkin.png'\
        -sound Crystal"

function accset {
    az account list -o json | jq -r '.[].name' | fzf | xargs -I {} bash -c 'az account set -s "{}"; az account show'
}

function swns {
    kubectl get namespace -o name | awk -F "/" '{print $2}'| fzf | xargs -I {} bash -c 'kubectl config set-context $(kubectl config current-context) --namespace {}; echo "Switched to namespace: {}"'
}

function swctx {
    kubectl config get-contexts -o name | fzf | xargs -I {} bash -c 'kubectl config use-context {}; echo "Context set to \"{}\""'
}
