# Install Kubernetes Metrics Server using HELM
# Resource: Helm Release 
resource "helm_release" "metrics_server_release" {
  name       = "prod-metrics-server"
  repository = "https://kubernetes-sigs.github.io/metrics-server/"
  chart      = "metrics-server"
  namespace = "kube-system"   
}

