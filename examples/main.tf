provider "azurerm" {
    version = "~> 1.23"
    use_msi = true
    subscription_id = var.subscription_id
    tenant_id = var.tenant_id
    client_id = var.client_id
    client_secret = var.client_secret
}


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