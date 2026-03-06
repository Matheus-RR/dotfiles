# dotfiles

My dev setup. Nothing revolutionary, just stuff I've accumulated that I don't want to set up from scratch again.

## What's in here

- `.gitconfig` - sensible defaults + aliases
- `k8s-aliases.sh` - kubectl shortcuts I actually use daily

## kubectl aliases

```bash
alias k='kubectl'
alias kgp='kubectl get pods'
alias kgs='kubectl get svc'
alias kgn='kubectl get nodes'
alias kl='kubectl logs -f'
alias kex='kubectl exec -it'
alias kctx='kubectx'
alias kns='kubens'
alias kroll='kubectl rollout restart deployment'
```

## git aliases

```
co = checkout
br = branch
ci = commit
st = status
lg = log --oneline --graph --all
undo = reset HEAD~1 --mixed
wip = !git add -A && git commit -m 'wip'
```
