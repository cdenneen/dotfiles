kube() {
  eval $(minikube docker-env)
}
unkube() {
  eval $(minikube docker-env -u)
}
alias minikube-start='minikube start --vm-driver xhyve --insecure-registry docker.artifactory.ap.org'
