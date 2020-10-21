resource "azurerm_kubernetes_cluster" "aksCluster" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = var.node_pool_name
    node_count = var.node_count
    vm_size    = var.vm_size
  }
  
  service_principal {
    client_id = var.client_id
    client_secret = var.client_secret
  }
  load_balancer_sku = "Standard"

  tags = var.tags
}

