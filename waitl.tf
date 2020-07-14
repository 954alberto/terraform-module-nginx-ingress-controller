resource "null_resource" "wait_for_eks_cluster" {
  triggers = {
    build_number = "${timestamp()}"
  }

  provisioner "local-exec" {
    command     = var.wait_for_cluster_cmd
    interpreter = var.wait_for_cluster_interpreter
    environment = {
      ENDPOINT = var.eksendpoint
    }
  }
}