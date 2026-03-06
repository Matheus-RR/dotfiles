#!/bin/bash
# kubectl shortcuts - source this in your .zshrc/.bashrc

alias k='kubectl'
alias kgp='kubectl get pods'
alias kgpa='kubectl get pods --all-namespaces'
alias kgs='kubectl get svc'
alias kgn='kubectl get nodes -o wide'
alias kgd='kubectl get deployments'
alias kgi='kubectl get ingress'
alias kdp='kubectl describe pod'
alias kds='kubectl describe svc'
alias kdd='kubectl describe deployment'
alias kl='kubectl logs -f'
alias klp='kubectl logs -f --previous'
alias kex='kubectl exec -it'
alias kctx='kubectx'
alias kns='kubens'
alias kroll='kubectl rollout restart deployment'
alias kstat='kubectl rollout status deployment'
alias ktop='kubectl top pods --sort-by=memory'
alias ktopn='kubectl top nodes'

# Quick port-forward
kpf() {
    kubectl port-forward svc/$1 ${2:-8080}:${3:-80}
}

# Get all events sorted by time
kevents() {
    kubectl get events --sort-by='.lastTimestamp' ${1:+--namespace=$1}
}

# Quick secret decode
ksecret() {
    kubectl get secret $1 -o json | jq -r '.data | to_entries[] | "\(.key): \(.value | @base64d)"'
}
