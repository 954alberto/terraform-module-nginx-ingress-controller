variable "name" {
  description = "Name of the Helm release"
}

variable "namespace" {
  description = "Namespace of the Helm release"
}

variable "aws_route53" {
  description = "These are the route53 details where to register the route53 entry. "
}

variable "helm_values" {
  description = "Helm values for cosmic cloud controller chart."
}

variable "chart_version" {
  description = "Helm chart version"
}

variable "chart" {
  description = "Helm chart name"
}

variable "helm_repository" {
  description = "Helm repository name"
}

variable "helm_repository_url" {
  description = "Helm repository url"
}

variable "helm_timeout" {
  description = "Helm timeout"
}

variable "eksendpoint" {
  description = "EKS cluster endpoint to be used to wait it's responds is health = OK"
}

variable "wait_for_cluster_cmd" {
  description = "Custom local-exec command to execute for determining if the eks cluster is healthy. Cluster endpoint will be available as an environment variable called ENDPOINT"
  type        = string
  default     = "for i in `seq 1 60`; do wget --no-check-certificate -O - -q $ENDPOINT/healthz >/dev/null && exit 0 || true; sleep 5; done; echo TIMEOUT && exit 1"
}

variable "wait_for_cluster_interpreter" {
  description = "Custom local-exec command line interpreter for the command to determining if the eks cluster is healthy."
  type        = list(string)
  default     = ["/bin/sh", "-c"]
}
