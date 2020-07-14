resource "kubernetes_namespace" "nginx-ingress" {
  depends_on = [null_resource.wait_for_eks_cluster]
  metadata {
    name = var.namespace
  }
}

resource "helm_release" "nginx-ingress" {
  depends_on = [null_resource.wait_for_eks_cluster]
  repository = var.helm_repository_url
  name      = var.name
  namespace = var.namespace
  chart     = var.chart
  version   = var.chart_version
  values    = [var.helm_values]
  timeout   = var.helm_timeout
}
