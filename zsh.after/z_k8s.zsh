source <(kubectl completion zsh)  # setup autocomplete in zsh
# source <(kops completion zsh) # setup autocomplete in zsh

alias k=kubectl
alias kx=kubectx
alias kn=kubens
alias kxdr="kx eks1devr"
alias kxqr="kx eks1qar"

kube() {
  export KUBECONIFG=~/.kube/eksctl/clusters/$*
}

compdef "_files -W ~/.kube/eksctl/clusters/" kube
