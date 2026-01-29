provider "azurerm" {
  features {}
}

# Resource Group
module "rg" {
  source = "../../modules/resource-group"
  name   = var.rg_name
  location = var.location
  tags   = var.tags
}

# Network (VNet + Subnets)
module "network" {
  source              = "../../modules/network"
  resource_group_name = module.rg.name
  location            = var.location
  vnet_name           = var.vnet_name
  address_space       = var.address_space
  subnet_prefixes     = var.subnet_prefixes
  tags                = var.tags
}

# VM
module "vm" {
  source              = "../../modules/vm"
  resource_group_name = module.rg.name
  subnet_id           = module.network.subnet_ids[0]
  vm_name             = var.vm_name
  vm_size             = var.vm_size
  admin_username      = var.admin_username
  ssh_key             = var.ssh_key
  tags                = var.tags
}

# AKS Cluster
module "aks" {
  source              = "../../modules/aks-cluster"
  resource_group_name = module.rg.name
  cluster_name        = var.aks_name
  location            = var.location
  node_count          = var.node_count
  node_vm_size        = var.node_vm_size
  tags                = var.tags
}
