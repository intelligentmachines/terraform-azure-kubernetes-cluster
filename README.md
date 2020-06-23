# Kubernetes Cluster Module

### Description
This module is for deploying `kubernetes cluster` resource in Azure using Terraform

### Inputs
|Variable Name|Type|Required| Default |Description|
|:------|:------|:-----|:-----|:-----|
| name| `string` | `true` | | Cluster name
| resource_group| `string` | `true` | | Resource Group Name
| location | `string` | `true` | | Cluster Location
| dns_prefix | `string` | `true` | | DNS Prefix
| client_id | `string` | `true` | | Client ID
| client_secret | `string` | `true` | | Client Secret
| node_pool_name | `string` | `false` | `default`| Node Pool
| node_count | `number` | `false` | 1 | Node Count
| vm_size | `string` | `true` |  | VM Size
| tags | `map` | `false` | `{deployer="terraform"}` | Tags


### Outputs
|Variable Name|Type| Default |Description|
|:------|:------|:-----|:-----|
| client_certificate| `string` | | Client Certificate of cluster
| kube_config| `string` | | `KUBE_CONFIG` of the cluster


### Usage 
```
module "my_kubernetes_cluster" {
    source = "intelligentmachines/kubernetes-cluster/azure"
    version = "0.0.1"
    
    name = "my-first-cluster"
    location = "sample-location"
    resource_group = "resource-group"
    dns_prefix = "my-first-cluster-1"
    vm_size = "Standard_DS2_v2"
    client_id = var.client_id
    client_secret = var.client_secret 
}
```