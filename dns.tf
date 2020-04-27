data "kubernetes_service" "nginx-ingress-controller" {
  depends_on = [helm_release.nginx-ingress]

  metadata {
    name      = "nginx-ingress-controller"
    namespace = var.namespace
  }
}

output "nginx-ingress-hostname" {
  value = [data.kubernetes_service.nginx-ingress-controller.load_balancer_ingress.0.hostname]
}

output "nginx-ingress-lb" {
  value = [data.kubernetes_service.nginx-ingress-controller.load_balancer_ingress]
}

#resource "aws_route53_record" "api" {
#  zone_id = lookup(var.aws_route53, "zone_id")
#  name    = "*.${lookup(var.aws_route53, "domain")}"
#  type    = lookup(var.aws_route53, "type")
#  ttl     = lookup(var.aws_route53, "ttl")
#  records = [data.kubernetes_service.nginx-ingress-controller.load_balancer_ingress.0.ip]
#}
