resource "kubernetes_namespace" "nginx-ingress" {
  metadata {
    name = var.namespace
  }
}

data "helm_repository" "stable" {
  name = "stable"
  url  = "https://kubernetes-charts.storage.googleapis.com"
}

resource "helm_release" "nginx-ingress" {
  name      = var.name
  namespace = var.namespace
  chart     = "stable/nginx-ingress"
  version   = var.chart_version
  values    = [var.helm_values]
}
