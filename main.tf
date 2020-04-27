resource "kubernetes_namespace" "nginx-ingress" {
  metadata {
    name = var.namespace
  }
}

resource "helm_release" "nginx-ingress" {
  name      = var.name
  namespace = var.namespace
  chart     = "stable/nginx-ingress"
  version   = var.chart_version
  values    = [var.helm_values]
}
