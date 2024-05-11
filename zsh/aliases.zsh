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
alias uuidgen='uuidgen | tr "[:upper:]" "[:lower:]"'
# M1 mac aliases 
alias funcx86='/usr/bin/arch -x86_64 /usr/local/bin/func'

# Mac setup for pomo
alias work="timer 45m && terminal-notifier -message 'Pomodoro'\
        -title 'Work Timer is up! Take a Break 😊'\
        -appIcon '~/Pictures/pumpkin.png'\
        -sound Crystal"

alias rest="timer 5m && terminal-notifier -message 'Pomodoro'\
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

function findrole {
   az role definition list -ojson --query "[].{roleName:roleName}" | jq -r '.[].roleName' | fzf | xargs -I {} bash -c 'az role definition list -n "{}"'
}
