resource "kubernetes_namespace" "nginx-ingress" {
  metadata {
    name = var.namespace
  }
}

data "helm_repository" "stable" {
  name = var.helm_repository
  url  = var.helm_repository_url
}

resource "helm_release" "nginx-ingress" {
  depends_on = [null_resource.wait_for_eks_cluster]
  name      = var.name
  namespace = var.namespace
  chart     = var.chart
  version   = var.chart_version
  values    = [var.helm_values]
  timeout   = var.helm_timeout
}
