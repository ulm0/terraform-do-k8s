# Digital Ocean Kubernetes

Modules for building kubernetes on Digital Ocean

## Usage

```hcl
module "k8s" {
  source  = "ulm0/k8s/do"
}
```

## Variables

|Field|Description|Required|Default|
| --- | --- | --- | --- |
|`do_k8s_version`|Kubernetes version (`doctl kubernetes options versions`)|N|`1.15.5-do.0`|
|`do_region`|Digital Ocean region (`doctl kubernetes options regions`)|N|`nyc1`|
|`node_pool_count`|Node count for the pool|N|`2`|
|`node_pool_name`|Name for the node pool|N|`worker-pool`|
|`node_pool_size`|Node size (`doctl kubernetes options sizes`)|N|`s-2vcpu-4gb`|
|`write_kubeconfig`|Write kubeconfig to file|N|`true`|
