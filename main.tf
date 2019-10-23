resource "random_string" "k8s_name" {
  length  = 12
  special = false
  upper   = false
  number  = false
}

resource "digitalocean_kubernetes_cluster" "do_k8s" {
  name   = random_string.k8s_name.result
  region = var.do_region
  # Grab the latest version slug from: doctl kubernetes options versions
  version = var.do_k8s_version

  node_pool {
    name = var.node_pool_name
    # To retrieve sizes run: doctl kubernetes options sizes
    size       = var.node_pool_size
    node_count = var.node_pool_count
  }
}

resource "local_file" "kubeconfig" {
  count    = var.write_kubeconfig ? 1 : 0
  content  = digitalocean_kubernetes_cluster.do_k8s.kube_config[0].raw_config
  filename = format("%s/%s", path.root, "kubeconfig.yml")
}
