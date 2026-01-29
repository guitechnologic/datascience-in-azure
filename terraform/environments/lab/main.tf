provider "azurerm" { features {} }

module "rg" {
  source   = "../../modules/resource-group"
  name     = "iac-lab-rg"
  location = "East US"
  tags     = { project = "iac", environment = "lab" }
}

module "network" {
  source              = "../../modules/network"
  vnet_name           = "iac-lab-vnet"
  resource_group_name = module.rg.name
  location            = module.rg.location
  address_space       = ["10.0.0.0/16"]
  subnets = [
    { name = "subnet1", prefix = "10.0.1.0/24" },
    { name = "subnet2", prefix = "10.0.2.0/24" }
  ]
  tags = { project = "iac", environment = "lab" }
}

module "vm1" {
  source              = "../../modules/vm"
  name                = "iac-lab-vm1"
  resource_group_name = module.rg.name
  location            = module.rg.location
  subnet_id           = module.network.subnet_ids[0]
  vm_size             = "Standard_B1s"
  admin_username      = "azureuser"
  admin_password      = "ChangeMe123!"
  tags                = { project = "iac", environment = "lab" }
}

module "aks" {
  source              = "../../modules/aks-cluster"
  name                = "iac-lab-aks"
  location            = module.rg.location
  resource_group_name = module.rg.name
  dns_prefix          = "iac-lab-aks"
  k8s_version         = "1.28.2"
  node_count          = 1
  vm_size             = "Standard_B2s"
  tags                = { project = "iac", environment = "lab" }
}
