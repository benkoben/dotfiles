function swns {
    kubectl get namespace -o name | awk -F "/" '{print $2}'| fzf | xargs -I {} bash -c 'kubectl config set-context $(kubectl config current-context) --namespace {}'
}

function swctx {
    kubectl config get-contexts -o name | fzf | xargs -I {} bash -c 'kubectl config use-context {}'
}
