resource "spectrocloud_cluster_group" "cg" {
  name = "dev-cg-eks"

  clusters {
    cluster_uid = var.host_cluster_uid
  }

  context = "project"

  config {
    host_endpoint_type       = "LoadBalancer"
    cpu_millicore            = 6000
    memory_in_mb             = 8192
    storage_in_gb            = 10
    oversubscription_percent = 120
    # values                   = file("./config.yaml")
  }

}
