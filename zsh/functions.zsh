function swns {
    kubectl get namespace -o name | awk -F "/" '{print $2}'| fzf | xargs -I {} bash -c 'kubectl config set-context --current --namespace {}'
}

function swctx {
    kubectl config get-contexts -o name | fzf | xargs -I {} bash -c 'kubectl config use-context {}'
}

function accset {
    az account list -o json | jq -r '.[].name' | fzf | xargs -I {} bash -c 'az account set -s "{}"; az account show'
}

function findrole {
   az role definition list -ojson --query "[].{roleName:roleName}" | jq -r '.[].roleName' | fzf | xargs az role definition list -n 
}

function start_azurite {
        tmux new-window -n azurite 'docker run -p 10000:10000 -p 10001:10001 -p 10002:10002 --rm mcr.microsoft.com/azure-storage/azurite & &>/dev/null'
}

