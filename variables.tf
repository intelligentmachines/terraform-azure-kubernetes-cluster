variable "name" {
    type = string
    description = "Name of the cluster"
}

variable "location" {
    type = string
    description = "Location of the cluster"
}

variable "resource_group" {
    type = string
    description = "Resource group name"
}

variable "dns_prefix" {
    type = string
    description = "DNS Prefix. (3-45 characters. Start with a character but end with either character or number.)"
}

variable "node_pool_name" {
    type = string
    description = "Node Pool Name"
    default = "default"
}

variable "node_count" {
    type = number
    description = "Node Count"
    default = 1
}

variable "vm_size" {
    type = string
    description = "VM Size"
}

variable "tags" {
    type = map
    default = {
        deployer = "terraform"
    }
    description = "Tags"
}

variable "client_id" {
    type = string
    description = "Service Account: Client Id"
}

variable "client_secret" {
    type = string
    description = "Service Account: Client Secret"
}


