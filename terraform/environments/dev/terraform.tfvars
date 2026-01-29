rg_name      = "iac-dev-rg"
location     = "eastus"
tags         = { environment = "dev", project = "iac" }

vnet_name    = "iac-dev-vnet"
address_space = ["10.0.0.0/16"]
subnet_prefixes = ["10.0.1.0/24"]

vm_name      = "iac-dev-vm"
vm_size      = "Standard_B2s"
admin_username = "azureuser"
ssh_key      = "<coloque sua chave SSH pública aqui>"

aks_name     = "iac-dev-aks"
node_count   = 2
node_vm_size = "Standard_B2s"
