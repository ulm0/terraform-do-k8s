variable "do_k8s_name" { default = "do_k8s" }
variable "do_k8s_version" { default = "1.15.5-do.0" }
variable "do_region" { default = "nyc1" }
variable "node_pool_count" { default = 2 }
variable "node_pool_name" { default = "worker-pool" }
variable "node_pool_size" { default = "s-2vcpu-4gb" }
variable "write_kubeconfig" { default = true }
